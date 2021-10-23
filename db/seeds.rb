# post = Post.create(
# 	name: "New Album",
# 	title: "Bad Seeds",
# 	author: "Nick Cave",
# 	content: "Tracklist"
# )

# posts = [
# 	["New Album", "The Bad Seeds", "Nick Cave", "Tracklist"]
# ]
#
# post = Post.create(
# 	name: posts[0][0],
# 	title: posts[0][1],
# 	author: posts[0][2],
# 	content: posts[0][3]
# )

Post.destroy_all
puts "Destroyed everything you touch"

posts = [
{
	name: "#недорого",
	title: "Стильно и недорого: 5 простых приемов в оформлении интерьера",
	author: "#правила",
	content: "Хороший интерьер складывается из множества составляющих: грамотной планировки ...",
	image: File.open(Rails.root.join('public', 'images', '1.png'))
},
{
	name: "#частые ошибки",
	title: "9 ошибок, которые чаще всего допускают неопытные дизайнеры",
	author: "#разное",
	content: "Рассказываем, о чем забывают дизайнеры без опыта и на какие критические моменты стоит ...",
	image: File.open(Rails.root.join('public', 'images', '2.png'))
},
{
	name: "#расстановка мебели",
	title: "В четырех стенах: Как расставить мебель в комнате",
	author: "#правила",
	content: "Расстановка мебели в квартире требует особой сноровки:  шкаф, диван и телевизор лучше ...",
	image: File.open(Rails.root.join('public', 'images', '3.png'))
}

]

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
