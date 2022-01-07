
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl; } ;


 int SSL_clear (int ) ;
 int SSL_set_quiet_shutdown (int ,int) ;
 int SSL_shutdown (int ) ;

int tls_connection_shutdown(void *ssl_ctx, struct tls_connection *conn)
{
 if (conn == ((void*)0))
  return -1;




 SSL_set_quiet_shutdown(conn->ssl, 1);
 SSL_shutdown(conn->ssl);
 return SSL_clear(conn->ssl) == 1 ? 0 : -1;
}
