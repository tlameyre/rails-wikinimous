# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

puts 'Creating 10 fake articles...'
Article.destroy_all
10.times do
  article = Article.new(
    title: Faker::Movie.title,
    content: Faker::Lorem.paragraph(sentence_count: 30)
  )
  article.save!
end
puts 'Finished!'
