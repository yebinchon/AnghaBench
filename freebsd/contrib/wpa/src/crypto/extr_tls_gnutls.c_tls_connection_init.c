
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {int xcred; scalar_t__ params_set; } ;
struct tls_connection {int xcred; int session; struct tls_global* global; } ;


 int GNUTLS_CRD_CERTIFICATE ;
 int MSG_INFO ;
 scalar_t__ gnutls_certificate_allocate_credentials (int *) ;
 int gnutls_credentials_set (int ,int ,int ) ;
 int gnutls_strerror (int) ;
 int os_free (struct tls_connection*) ;
 struct tls_connection* os_zalloc (int) ;
 scalar_t__ tls_gnutls_init_session (struct tls_global*,struct tls_connection*) ;
 int wpa_printf (int ,char*,int ) ;

struct tls_connection * tls_connection_init(void *ssl_ctx)
{
 struct tls_global *global = ssl_ctx;
 struct tls_connection *conn;
 int ret;

 conn = os_zalloc(sizeof(*conn));
 if (conn == ((void*)0))
  return ((void*)0);
 conn->global = global;

 if (tls_gnutls_init_session(global, conn)) {
  os_free(conn);
  return ((void*)0);
 }

 if (global->params_set) {
  ret = gnutls_credentials_set(conn->session,
          GNUTLS_CRD_CERTIFICATE,
          global->xcred);
  if (ret < 0) {
   wpa_printf(MSG_INFO, "Failed to configure "
       "credentials: %s", gnutls_strerror(ret));
   os_free(conn);
   return ((void*)0);
  }
 }

 if (gnutls_certificate_allocate_credentials(&conn->xcred)) {
  os_free(conn);
  return ((void*)0);
 }

 return conn;
}
