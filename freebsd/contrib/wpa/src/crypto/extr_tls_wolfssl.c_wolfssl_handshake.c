
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {struct wpabuf* out_data; } ;
struct tls_connection {TYPE_1__ output; int failed; int ssl; } ;


 int MSG_DEBUG ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int wolfSSL_ERR_error_string (int,char*) ;
 int wolfSSL_accept (int ) ;
 int wolfSSL_connect (int ) ;
 int wolfSSL_get_error (int ,int) ;
 int wolfSSL_set_accept_state (int ) ;
 int wolfSSL_set_connect_state (int ) ;
 int wolfssl_reset_out_data (TYPE_1__*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * wolfssl_handshake(struct tls_connection *conn,
      const struct wpabuf *in_data,
      int server)
{
 int res;

 wolfssl_reset_out_data(&conn->output);


 if (server) {
  wolfSSL_set_accept_state(conn->ssl);
  res = wolfSSL_accept(conn->ssl);
  wpa_printf(MSG_DEBUG, "SSL: wolfSSL_accept: %d", res);
 } else {
  wolfSSL_set_connect_state(conn->ssl);
  res = wolfSSL_connect(conn->ssl);
  wpa_printf(MSG_DEBUG, "SSL: wolfSSL_connect: %d", res);
 }

 if (res != 1) {
  int err = wolfSSL_get_error(conn->ssl, res);

  if (err == SSL_ERROR_WANT_READ) {
   wpa_printf(MSG_DEBUG,
       "SSL: wolfSSL_connect - want more data");
  } else if (err == SSL_ERROR_WANT_WRITE) {
   wpa_printf(MSG_DEBUG,
       "SSL: wolfSSL_connect - want to write");
  } else {
   char msg[80];

   wpa_printf(MSG_DEBUG,
       "SSL: wolfSSL_connect - failed %s",
       wolfSSL_ERR_error_string(err, msg));
   conn->failed++;
  }
 }

 return conn->output.out_data;
}
