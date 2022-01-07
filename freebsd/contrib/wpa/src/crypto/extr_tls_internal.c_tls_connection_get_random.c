
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_random {int dummy; } ;
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int tlsv1_client_get_random (scalar_t__,struct tls_random*) ;
 int tlsv1_server_get_random (scalar_t__,struct tls_random*) ;

int tls_connection_get_random(void *tls_ctx, struct tls_connection *conn,
         struct tls_random *data)
{
 return -1;
}
