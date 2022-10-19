class User < ApplicationRecord
  # Validations
  validates :username, 
            presence: true, 
            uniqueness: true, 
            length: { minimum: 4, maximum: 12 }

  validates :email, 
            uniqueness: true, 
            presence: true,
            format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :password,
            presence: true, 
            length: { minimum: 6, maximum: 16 }

  # Associations
  has_many :posts
end
