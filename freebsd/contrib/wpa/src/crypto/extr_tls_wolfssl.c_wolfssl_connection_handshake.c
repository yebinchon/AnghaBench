
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {int ssl; int input; } ;


 int MSG_DEBUG ;
 int tls_connection_resumed (int *,struct tls_connection*) ;
 scalar_t__ wolfSSL_is_init_finished (int ) ;
 struct wpabuf* wolfssl_get_appl_data (struct tls_connection*,int ) ;
 struct wpabuf* wolfssl_handshake (struct tls_connection*,struct wpabuf const*,int) ;
 int wolfssl_reset_in_data (int *,struct wpabuf const*) ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static struct wpabuf *
wolfssl_connection_handshake(struct tls_connection *conn,
        const struct wpabuf *in_data,
        struct wpabuf **appl_data, int server)
{
 struct wpabuf *out_data;

 wolfssl_reset_in_data(&conn->input, in_data);

 if (appl_data)
  *appl_data = ((void*)0);

 out_data = wolfssl_handshake(conn, in_data, server);
 if (!out_data)
  return ((void*)0);

 if (wolfSSL_is_init_finished(conn->ssl)) {
  wpa_printf(MSG_DEBUG,
      "wolfSSL: Handshake finished - resumed=%d",
      tls_connection_resumed(((void*)0), conn));
  if (appl_data && in_data)
   *appl_data = wolfssl_get_appl_data(conn,
          wpabuf_len(in_data));
 }

 return out_data;
}
