
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int dummy; } ;
struct tls_connection {int dummy; } ;



int tls_connection_set_params(void *tls_ctx, struct tls_connection *conn,
         const struct tls_connection_params *params)
{
 return -1;
}
