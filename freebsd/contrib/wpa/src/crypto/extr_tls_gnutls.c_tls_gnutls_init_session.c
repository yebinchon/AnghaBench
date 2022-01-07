
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {scalar_t__ server; } ;
struct tls_connection {int session; } ;
typedef int gnutls_transport_ptr_t ;


 int GNUTLS_CLIENT ;
 int GNUTLS_SERVER ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int gnutls_deinit (int ) ;
 int gnutls_init (int *,int ) ;
 int gnutls_priority_set_direct (int ,char*,char const**) ;
 int gnutls_session_set_ptr (int ,struct tls_connection*) ;
 int gnutls_set_default_priority (int ) ;
 char const* gnutls_strerror (int) ;
 int gnutls_transport_set_ptr (int ,int ) ;
 int gnutls_transport_set_pull_function (int ,int ) ;
 int gnutls_transport_set_push_function (int ,int ) ;
 int tls_pull_func ;
 int tls_push_func ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static int tls_gnutls_init_session(struct tls_global *global,
       struct tls_connection *conn)
{
 const char *err;
 int ret;

 ret = gnutls_init(&conn->session,
     global->server ? GNUTLS_SERVER : GNUTLS_CLIENT);
 if (ret < 0) {
  wpa_printf(MSG_INFO, "TLS: Failed to initialize new TLS "
      "connection: %s", gnutls_strerror(ret));
  return -1;
 }

 ret = gnutls_set_default_priority(conn->session);
 if (ret < 0)
  goto fail;

 ret = gnutls_priority_set_direct(conn->session, "NORMAL:-VERS-SSL3.0",
      &err);
 if (ret < 0) {
  wpa_printf(MSG_ERROR, "GnuTLS: Priority string failure at "
      "'%s'", err);
  goto fail;
 }

 gnutls_transport_set_pull_function(conn->session, tls_pull_func);
 gnutls_transport_set_push_function(conn->session, tls_push_func);
 gnutls_transport_set_ptr(conn->session, (gnutls_transport_ptr_t) conn);
 gnutls_session_set_ptr(conn->session, conn);

 return 0;

fail:
 wpa_printf(MSG_INFO, "TLS: Failed to setup new TLS connection: %s",
     gnutls_strerror(ret));
 gnutls_deinit(conn->session);
 return -1;
}
