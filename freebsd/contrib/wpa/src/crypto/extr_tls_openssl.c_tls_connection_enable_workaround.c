
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl; } ;


 int SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS ;
 int SSL_set_options (int ,int ) ;

int tls_connection_enable_workaround(void *ssl_ctx,
         struct tls_connection *conn)
{
 SSL_set_options(conn->ssl, SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS);

 return 0;
}
