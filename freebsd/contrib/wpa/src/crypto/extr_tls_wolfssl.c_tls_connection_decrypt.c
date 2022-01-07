
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct wpabuf const wpabuf ;
struct tls_connection {int ssl; int input; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int wolfSSL_read (int ,int ,int ) ;
 int wolfssl_reset_in_data (int *,struct wpabuf const*) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf const* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_mhead (struct wpabuf const*) ;
 int wpabuf_put (struct wpabuf const*,int) ;
 int wpabuf_size (struct wpabuf const*) ;

struct wpabuf * tls_connection_decrypt(void *tls_ctx,
           struct tls_connection *conn,
           const struct wpabuf *in_data)
{
 int res;
 struct wpabuf *buf;

 if (!conn)
  return ((void*)0);

 wpa_printf(MSG_DEBUG, "SSL: decrypt");

 wolfssl_reset_in_data(&conn->input, in_data);
 buf = wpabuf_alloc((wpabuf_len(in_data) + 500) * 3);
 if (!buf)
  return ((void*)0);
 res = wolfSSL_read(conn->ssl, wpabuf_mhead(buf), wpabuf_size(buf));
 if (res < 0) {
  wpa_printf(MSG_INFO, "Decryption failed - SSL_read");
  wpabuf_free(buf);
  return ((void*)0);
 }
 wpabuf_put(buf, res);

 wpa_printf(MSG_DEBUG, "SSL: decrypt: %ld bytes", wpabuf_len(buf));

 return buf;
}
