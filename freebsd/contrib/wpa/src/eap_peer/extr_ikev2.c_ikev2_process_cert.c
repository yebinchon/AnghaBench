
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_responder_data {scalar_t__ peer_auth; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 scalar_t__ PEER_AUTH_CERT ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ikev2_process_cert(struct ikev2_responder_data *data,
         const u8 *cert, size_t cert_len)
{
 u8 cert_encoding;

 if (cert == ((void*)0)) {
  if (data->peer_auth == PEER_AUTH_CERT) {
   wpa_printf(MSG_INFO, "IKEV2: No Certificate received");
   return -1;
  }
  return 0;
 }

 if (cert_len < 1) {
  wpa_printf(MSG_INFO, "IKEV2: No Cert Encoding field");
  return -1;
 }

 cert_encoding = cert[0];
 cert++;
 cert_len--;

 wpa_printf(MSG_DEBUG, "IKEV2: Cert Encoding %d", cert_encoding);
 wpa_hexdump(MSG_MSGDUMP, "IKEV2: Certificate Data", cert, cert_len);



 return 0;
}
