class User < ApplicationRecord
	validates :name , length: {in: 6..20}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	has_many :microposts
end
