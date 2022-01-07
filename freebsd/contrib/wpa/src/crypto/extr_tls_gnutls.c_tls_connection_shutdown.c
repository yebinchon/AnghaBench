
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {int session_data_size; scalar_t__ session_data; int xcred; } ;
struct tls_connection {int session; int xcred; scalar_t__ params_set; scalar_t__ established; int * push_buf; } ;


 int GNUTLS_CRD_CERTIFICATE ;
 int GNUTLS_SHUT_RDWR ;
 int MSG_INFO ;
 int gnutls_bye (int ,int ) ;
 int gnutls_credentials_set (int ,int ,int ) ;
 int gnutls_deinit (int ) ;
 int gnutls_session_set_data (int ,scalar_t__,int ) ;
 int gnutls_strerror (int) ;
 scalar_t__ tls_gnutls_init_session (struct tls_global*,struct tls_connection*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (int *) ;

int tls_connection_shutdown(void *ssl_ctx, struct tls_connection *conn)
{
 struct tls_global *global = ssl_ctx;
 int ret;

 if (conn == ((void*)0))
  return -1;




 gnutls_bye(conn->session, GNUTLS_SHUT_RDWR);
 wpabuf_free(conn->push_buf);
 conn->push_buf = ((void*)0);
 conn->established = 0;

 gnutls_deinit(conn->session);
 if (tls_gnutls_init_session(global, conn)) {
  wpa_printf(MSG_INFO, "GnuTLS: Failed to preparare new session "
      "for session resumption use");
  return -1;
 }

 ret = gnutls_credentials_set(conn->session, GNUTLS_CRD_CERTIFICATE,
         conn->params_set ? conn->xcred :
         global->xcred);
 if (ret < 0) {
  wpa_printf(MSG_INFO, "GnuTLS: Failed to configure credentials "
      "for session resumption: %s", gnutls_strerror(ret));
  return -1;
 }

 if (global->session_data) {
  ret = gnutls_session_set_data(conn->session,
           global->session_data,
           global->session_data_size);
  if (ret < 0) {
   wpa_printf(MSG_INFO, "GnuTLS: Failed to set session "
       "data: %s", gnutls_strerror(ret));
   return -1;
  }
 }

 return 0;
}
