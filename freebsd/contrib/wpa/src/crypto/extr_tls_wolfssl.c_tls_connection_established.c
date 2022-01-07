
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl; } ;


 int wolfSSL_is_init_finished (int ) ;

int tls_connection_established(void *tls_ctx, struct tls_connection *conn)
{
 return conn ? wolfSSL_is_init_finished(conn->ssl) : 0;
}
