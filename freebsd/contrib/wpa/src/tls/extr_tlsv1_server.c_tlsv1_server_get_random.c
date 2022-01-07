
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_server {scalar_t__ state; int server_random; int client_random; } ;
struct tls_random {void* server_random_len; int server_random; void* client_random_len; int client_random; } ;


 scalar_t__ CLIENT_HELLO ;
 scalar_t__ SERVER_HELLO ;
 void* TLS_RANDOM_LEN ;
 int os_memset (struct tls_random*,int ,int) ;

int tlsv1_server_get_random(struct tlsv1_server *conn, struct tls_random *keys)
{
 os_memset(keys, 0, sizeof(*keys));
 if (conn->state == CLIENT_HELLO)
  return -1;

 keys->client_random = conn->client_random;
 keys->client_random_len = TLS_RANDOM_LEN;

 if (conn->state != SERVER_HELLO) {
  keys->server_random = conn->server_random;
  keys->server_random_len = TLS_RANDOM_LEN;
 }

 return 0;
}
