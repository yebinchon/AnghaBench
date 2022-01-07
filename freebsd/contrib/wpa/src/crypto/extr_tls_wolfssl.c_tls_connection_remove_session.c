
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl; } ;
typedef int WOLFSSL_SESSION ;


 int MSG_DEBUG ;
 int wolfSSL_SSL_SESSION_set_timeout (int *,int ) ;
 int * wolfSSL_get_session (int ) ;
 int wpa_printf (int ,char*) ;

void tls_connection_remove_session(struct tls_connection *conn)
{
 WOLFSSL_SESSION *sess;

 sess = wolfSSL_get_session(conn->ssl);
 if (!sess)
  return;

 wolfSSL_SSL_SESSION_set_timeout(sess, 0);
 wpa_printf(MSG_DEBUG,
     "wolfSSL: Removed cached session to disable session resumption");
}
