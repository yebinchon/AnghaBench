
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {scalar_t__ server; } ;


 int tlsv1_server_set_log_cb (scalar_t__,void (*) (void*,char const*),void*) ;

void tls_connection_set_log_cb(struct tls_connection *conn,
          void (*log_cb)(void *ctx, const char *msg),
          void *ctx)
{




}
