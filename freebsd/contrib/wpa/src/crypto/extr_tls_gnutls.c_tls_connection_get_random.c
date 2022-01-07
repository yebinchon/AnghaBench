
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tls_random {int server_random_len; int client_random_len; int server_random; int client_random; } ;
struct tls_connection {int * session; } ;
struct TYPE_4__ {int size; int data; } ;
typedef TYPE_1__ gnutls_datum_t ;


 int gnutls_session_get_random (int *,TYPE_1__*,TYPE_1__*) ;
 int os_memset (struct tls_random*,int ,int) ;

int tls_connection_get_random(void *ssl_ctx, struct tls_connection *conn,
       struct tls_random *keys)
{
 return -1;

}
