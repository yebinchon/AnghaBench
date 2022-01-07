
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_random {int server_random_len; int server_random; int client_random_len; int client_random; } ;
struct tls_connection {int server_random; int client_random; int * ssl; } ;
typedef int SSL ;


 int SSL_get_client_random (int *,int ,int) ;
 int SSL_get_server_random (int *,int ,int) ;
 int os_memset (struct tls_random*,int ,int) ;

int tls_connection_get_random(void *ssl_ctx, struct tls_connection *conn,
         struct tls_random *keys)
{
 SSL *ssl;

 if (conn == ((void*)0) || keys == ((void*)0))
  return -1;
 ssl = conn->ssl;
 if (ssl == ((void*)0))
  return -1;

 os_memset(keys, 0, sizeof(*keys));
 keys->client_random = conn->client_random;
 keys->client_random_len = SSL_get_client_random(
  ssl, conn->client_random, sizeof(conn->client_random));
 keys->server_random = conn->server_random;
 keys->server_random_len = SSL_get_server_random(
  ssl, conn->server_random, sizeof(conn->server_random));

 return 0;
}
