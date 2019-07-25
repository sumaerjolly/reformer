class User < ApplicationRecord
    validates :username, presence: true, length: { minimum: 6 }
    validates :email, presence: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
    validates :password, presence: true, length: { minimum: 6 }
end
