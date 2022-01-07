
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef int WOLFSSL_SESSION ;
typedef int WOLFSSL_CTX ;


 int MSG_DEBUG ;
 int tls_ex_idx_session ;
 struct wpabuf* wolfSSL_SESSION_get_ex_data (int *,int ) ;
 int wolfSSL_SESSION_set_ex_data (int *,int ,int *) ;
 int wpa_printf (int ,char*,struct wpabuf*,int *) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static void remove_session_cb(WOLFSSL_CTX *ctx, WOLFSSL_SESSION *sess)
{
 struct wpabuf *buf;

 buf = wolfSSL_SESSION_get_ex_data(sess, tls_ex_idx_session);
 if (!buf)
  return;
 wpa_printf(MSG_DEBUG,
     "wolfSSL: Free application session data %p (sess %p)",
     buf, sess);
 wpabuf_free(buf);

 wolfSSL_SESSION_set_ex_data(sess, tls_ex_idx_session, ((void*)0));
}
