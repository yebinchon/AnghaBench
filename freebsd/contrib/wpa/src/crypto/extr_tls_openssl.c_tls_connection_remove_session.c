
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl_ctx; int ssl; } ;
typedef int SSL_SESSION ;


 int MSG_DEBUG ;
 int SSL_CTX_remove_session (int ,int *) ;
 int * SSL_get_session (int ) ;
 int wpa_printf (int ,char*) ;

void tls_connection_remove_session(struct tls_connection *conn)
{
 SSL_SESSION *sess;

 sess = SSL_get_session(conn->ssl);
 if (!sess)
  return;

 if (SSL_CTX_remove_session(conn->ssl_ctx, sess) != 1)
  wpa_printf(MSG_DEBUG,
      "OpenSSL: Session was not cached");
 else
  wpa_printf(MSG_DEBUG,
      "OpenSSL: Removed cached session to disable session resumption");
}
