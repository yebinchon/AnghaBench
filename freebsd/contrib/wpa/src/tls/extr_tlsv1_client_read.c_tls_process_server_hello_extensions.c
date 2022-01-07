
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tlsv1_client {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_process_server_hello_extensions(struct tlsv1_client *conn,
            const u8 *pos, size_t len)
{
 const u8 *end = pos + len;

 wpa_hexdump(MSG_MSGDUMP, "TLSv1: ServerHello extensions",
      pos, len);
 while (pos < end) {
  u16 ext, elen;

  if (end - pos < 4) {
   wpa_printf(MSG_INFO, "TLSv1: Truncated ServerHello extension header");
   return -1;
  }

  ext = WPA_GET_BE16(pos);
  pos += 2;
  elen = WPA_GET_BE16(pos);
  pos += 2;

  if (elen > end - pos) {
   wpa_printf(MSG_INFO, "TLSv1: Truncated ServerHello extension");
   return -1;
  }

  wpa_printf(MSG_DEBUG, "TLSv1: ServerHello ExtensionType %u",
      ext);
  wpa_hexdump(MSG_DEBUG, "TLSv1: ServerHello extension data",
       pos, elen);

  pos += elen;
 }

 return 0;
}
