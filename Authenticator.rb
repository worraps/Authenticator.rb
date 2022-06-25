users = [
          { username: "Kamil", password: "Kamil1"},
          { username: "Kamilek", password: "Kamil12"},
          { username: "Kamilos", password: "Kamil123"},
          { username: "Kamileczek", password: "Kamil1234"},
        ]
def auth_user (username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credential were not correct"
end

puts "Welcome to the authenticator"
35.times { print "-"}
puts

puts "This program will takie input from the user and compare password"
puts "If password is correct, you will get back the user object"

attemps = 1
while attemps < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press z to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "z"
  attemps += 1
end
puts " Spierdalaj tępaku" if attemps == 4
