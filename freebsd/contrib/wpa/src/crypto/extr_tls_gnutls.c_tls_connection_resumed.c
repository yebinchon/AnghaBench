
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int session; } ;


 int gnutls_session_is_resumed (int ) ;

int tls_connection_resumed(void *ssl_ctx, struct tls_connection *conn)
{
 if (conn == ((void*)0))
  return 0;
 return gnutls_session_is_resumed(conn->session);
}
