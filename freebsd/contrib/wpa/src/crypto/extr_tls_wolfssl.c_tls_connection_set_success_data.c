
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {int success_data; int ssl; } ;
typedef int WOLFSSL_SESSION ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int tls_ex_idx_session ;
 struct wpabuf* wolfSSL_SESSION_get_ex_data (int *,int ) ;
 int wolfSSL_SESSION_set_ex_data (int *,int ,struct wpabuf*) ;
 int * wolfSSL_get_session (int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;

void tls_connection_set_success_data(struct tls_connection *conn,
         struct wpabuf *data)
{
 WOLFSSL_SESSION *sess;
 struct wpabuf *old;

 wpa_printf(MSG_DEBUG, "wolfSSL: Set success data");

 sess = wolfSSL_get_session(conn->ssl);
 if (!sess) {
  wpa_printf(MSG_DEBUG,
      "wolfSSL: No session found for success data");
  goto fail;
 }

 old = wolfSSL_SESSION_get_ex_data(sess, tls_ex_idx_session);
 if (old) {
  wpa_printf(MSG_DEBUG, "wolfSSL: Replacing old success data %p",
      old);
  wpabuf_free(old);
 }
 if (wolfSSL_SESSION_set_ex_data(sess, tls_ex_idx_session, data) != 1)
  goto fail;

 wpa_printf(MSG_DEBUG, "wolfSSL: Stored success data %p", data);
 conn->success_data = 1;
 return;

fail:
 wpa_printf(MSG_INFO, "wolfSSL: Failed to store success data");
 wpabuf_free(data);
}
