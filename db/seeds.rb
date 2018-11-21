# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = []

10.times do
  restaurants_attributes << {name: Faker::LordOfTheRings.location, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number, category: %w{chinese italian japanese french belgian}.sample}
end

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
