
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int invalid_hb_used; } ;
typedef int SSL ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 size_t WPA_GET_BE16 (int const*) ;
 int check_server_hello (struct tls_connection*,int const*,int const*) ;
 int check_server_key_exchange (int *,struct tls_connection*,int const*,int const*) ;
 int openssl_content_type (int) ;
 int openssl_handshake_type (int,void const*,size_t) ;
 int wpa_hexdump_key (int ,char*,void const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void tls_msg_cb(int write_p, int version, int content_type,
         const void *buf, size_t len, SSL *ssl, void *arg)
{
 struct tls_connection *conn = arg;
 const u8 *pos = buf;

 if (write_p == 2) {
  wpa_printf(MSG_DEBUG,
      "OpenSSL: session ver=0x%x content_type=%d",
      version, content_type);
  wpa_hexdump_key(MSG_MSGDUMP, "OpenSSL: Data", buf, len);
  return;
 }

 wpa_printf(MSG_DEBUG, "OpenSSL: %s ver=0x%x content_type=%d (%s/%s)",
     write_p ? "TX" : "RX", version, content_type,
     openssl_content_type(content_type),
     openssl_handshake_type(content_type, buf, len));
 wpa_hexdump_key(MSG_MSGDUMP, "OpenSSL: Message", buf, len);
 if (content_type == 24 && len >= 3 && pos[0] == 1) {
  size_t payload_len = WPA_GET_BE16(pos + 1);
  if (payload_len + 3 > len) {
   wpa_printf(MSG_ERROR, "OpenSSL: Heartbeat attack detected");
   conn->invalid_hb_used = 1;
  }
 }
}
