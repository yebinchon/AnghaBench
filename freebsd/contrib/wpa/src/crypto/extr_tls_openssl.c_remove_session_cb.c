
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;


 int MSG_DEBUG ;
 struct wpabuf* SSL_SESSION_get_ex_data (int *,scalar_t__) ;
 int SSL_SESSION_set_ex_data (int *,scalar_t__,int *) ;
 scalar_t__ tls_ex_idx_session ;
 int wpa_printf (int ,char*,struct wpabuf*,int *) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static void remove_session_cb(SSL_CTX *ctx, SSL_SESSION *sess)
{
 struct wpabuf *buf;

 if (tls_ex_idx_session < 0)
  return;
 buf = SSL_SESSION_get_ex_data(sess, tls_ex_idx_session);
 if (!buf)
  return;
 wpa_printf(MSG_DEBUG,
     "OpenSSL: Free application session data %p (sess %p)",
     buf, sess);
 wpabuf_free(buf);

 SSL_SESSION_set_ex_data(sess, tls_ex_idx_session, ((void*)0));
}
