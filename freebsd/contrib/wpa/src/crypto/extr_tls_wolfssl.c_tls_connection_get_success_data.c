
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {int ssl; } ;
typedef int WOLFSSL_SESSION ;


 int MSG_DEBUG ;
 int tls_ex_idx_session ;
 struct wpabuf const* wolfSSL_SESSION_get_ex_data (int *,int ) ;
 int * wolfSSL_get_session (int ) ;
 int wpa_printf (int ,char*) ;

const struct wpabuf *
tls_connection_get_success_data(struct tls_connection *conn)
{
 WOLFSSL_SESSION *sess;

 wpa_printf(MSG_DEBUG, "wolfSSL: Get success data");

 sess = wolfSSL_get_session(conn->ssl);
 if (!sess)
  return ((void*)0);
 return wolfSSL_SESSION_get_ex_data(sess, tls_ex_idx_session);
}
