# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning database...'
Restaurant.destroy_all

puts 'Creating 10 fake restaurants...'
10.times do
  Restaurant.create!(
    name: Faker::Creature::Animal.name,
    address: Faker::Address.country,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: Restaurant::CATEGORIES.sample
  )
end
puts 'Finished!'
