
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl; } ;
typedef int WOLFSSL_SESSION ;


 int MSG_DEBUG ;
 int wolfSSL_clear (int ) ;
 int * wolfSSL_get_session (int ) ;
 int wolfSSL_set_quiet_shutdown (int ,int) ;
 int wolfSSL_set_session (int ,int *) ;
 int wolfSSL_shutdown (int ) ;
 int wpa_printf (int ,char*) ;

int tls_connection_shutdown(void *tls_ctx, struct tls_connection *conn)
{
 WOLFSSL_SESSION *session;

 if (!conn)
  return -1;

 wpa_printf(MSG_DEBUG, "SSL: connection shutdown");


 wolfSSL_set_quiet_shutdown(conn->ssl, 1);
 wolfSSL_shutdown(conn->ssl);

 session = wolfSSL_get_session(conn->ssl);
 if (wolfSSL_clear(conn->ssl) != 1)
  return -1;
 wolfSSL_set_session(conn->ssl, session);

 return 0;
}
