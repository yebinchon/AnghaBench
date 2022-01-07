
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {scalar_t__ invalid_hb_used; int ssl; scalar_t__ server; int ssl_ctx; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ SSL_get_shared_ciphers (int ,char*,size_t) ;
 scalar_t__ SSL_is_init_finished (int ) ;
 struct wpabuf* openssl_get_appl_data (struct tls_connection*,int ) ;
 struct wpabuf* openssl_handshake (struct tls_connection*,struct wpabuf const*) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int tls_connection_resumed (int ,struct tls_connection*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static struct wpabuf *
openssl_connection_handshake(struct tls_connection *conn,
        const struct wpabuf *in_data,
        struct wpabuf **appl_data)
{
 struct wpabuf *out_data;

 if (appl_data)
  *appl_data = ((void*)0);

 out_data = openssl_handshake(conn, in_data);
 if (out_data == ((void*)0))
  return ((void*)0);
 if (conn->invalid_hb_used) {
  wpa_printf(MSG_INFO, "TLS: Heartbeat attack detected - do not send response");
  wpabuf_free(out_data);
  return ((void*)0);
 }

 if (SSL_is_init_finished(conn->ssl)) {
  wpa_printf(MSG_DEBUG,
      "OpenSSL: Handshake finished - resumed=%d",
      tls_connection_resumed(conn->ssl_ctx, conn));
  if (conn->server) {
   char *buf;
   size_t buflen = 2000;

   buf = os_malloc(buflen);
   if (buf) {
    if (SSL_get_shared_ciphers(conn->ssl, buf,
          buflen)) {
     buf[buflen - 1] = '\0';
     wpa_printf(MSG_DEBUG,
         "OpenSSL: Shared ciphers: %s",
         buf);
    }
    os_free(buf);
   }
  }
  if (appl_data && in_data)
   *appl_data = openssl_get_appl_data(conn,
          wpabuf_len(in_data));
 }

 if (conn->invalid_hb_used) {
  wpa_printf(MSG_INFO, "TLS: Heartbeat attack detected - do not send response");
  if (appl_data) {
   wpabuf_free(*appl_data);
   *appl_data = ((void*)0);
  }
  wpabuf_free(out_data);
  return ((void*)0);
 }

 return out_data;
}
