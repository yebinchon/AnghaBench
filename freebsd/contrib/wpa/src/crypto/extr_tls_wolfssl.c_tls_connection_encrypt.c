
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {struct wpabuf* out_data; } ;
struct tls_connection {TYPE_1__ output; int ssl; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int wolfSSL_ERR_error_string (int,char*) ;
 int wolfSSL_get_error (int ,int) ;
 int wolfSSL_write (int ,int ,int ) ;
 int wolfssl_reset_out_data (TYPE_1__*) ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

struct wpabuf * tls_connection_encrypt(void *tls_ctx,
           struct tls_connection *conn,
           const struct wpabuf *in_data)
{
 int res;

 if (!conn)
  return ((void*)0);

 wpa_printf(MSG_DEBUG, "SSL: encrypt: %ld bytes", wpabuf_len(in_data));

 wolfssl_reset_out_data(&conn->output);

 res = wolfSSL_write(conn->ssl, wpabuf_head(in_data),
       wpabuf_len(in_data));
 if (res < 0) {
  int err = wolfSSL_get_error(conn->ssl, res);
  char msg[80];

  wpa_printf(MSG_INFO, "Encryption failed - SSL_write: %s",
      wolfSSL_ERR_error_string(err, msg));
  return ((void*)0);
 }

 return conn->output.out_data;
}
