
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl; } ;


 int SSL_session_reused (int ) ;

int tls_connection_resumed(void *ssl_ctx, struct tls_connection *conn)
{
 return conn ? SSL_session_reused(conn->ssl) : 0;
}
