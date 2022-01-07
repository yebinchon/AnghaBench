
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_random {int dummy; } ;
struct tls_connection {int dummy; } ;



int tls_connection_get_random(void *tls_ctx, struct tls_connection *conn,
         struct tls_random *data)
{
 return -1;
}
