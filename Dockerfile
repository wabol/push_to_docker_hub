# Dockerfile
FROM python:3.12.2-alpine3.19

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

# CMD ["python", "app.py"]

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]