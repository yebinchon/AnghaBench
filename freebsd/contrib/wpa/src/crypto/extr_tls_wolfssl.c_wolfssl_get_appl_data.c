
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {int ssl; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int wolfSSL_ERR_error_string (int,char*) ;
 int wolfSSL_get_error (int ,int) ;
 int wolfSSL_read (int ,int ,int ) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_size (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * wolfssl_get_appl_data(struct tls_connection *conn,
          size_t max_len)
{
 int res;
 struct wpabuf *appl_data = wpabuf_alloc(max_len + 100);

 if (!appl_data)
  return ((void*)0);

 res = wolfSSL_read(conn->ssl, wpabuf_mhead(appl_data),
      wpabuf_size(appl_data));
 if (res < 0) {
  int err = wolfSSL_get_error(conn->ssl, res);

  if (err == SSL_ERROR_WANT_READ || err == SSL_ERROR_WANT_WRITE) {
   wpa_printf(MSG_DEBUG,
       "SSL: No Application Data included");
  } else {
   char msg[80];

   wpa_printf(MSG_DEBUG,
       "Failed to read possible Application Data %s",
       wolfSSL_ERR_error_string(err, msg));
  }

  wpabuf_free(appl_data);
  return ((void*)0);
 }

 wpabuf_put(appl_data, res);
 wpa_hexdump_buf_key(MSG_MSGDUMP,
       "SSL: Application Data in Finished message",
       appl_data);
 return appl_data;
}
