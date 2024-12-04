# Menggunakan image dasar Node.js
FROM node:14

# Set direktori kerja dalam container
WORKDIR /app

# Salin package.json dan install dependensi
COPY package*.json ./
RUN npm install

# Salin semua file aplikasi ke dalam container
COPY . .

# Jalankan aplikasi
CMD ["npm", "start"]
