# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."

100.times do
  name = Faker::Cannabis.brand
  address = Faker::Cannabis.health_benefit
  description = Faker::Cannabis.cannabinoid
  price_per_night = rand(24..178)
  number_of_guests = rand(1..8)
  Flat.create!(name: name, address: address, description: description, price_per_night: price_per_night, number_of_guests: number_of_guests)
end

puts "Finished!"
