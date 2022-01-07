
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct ttls_parse_avp {int dummy; } ;
struct ttls_avp {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 int eap_ttls_parse_avp (int *,size_t,struct ttls_parse_avp*) ;
 int os_memset (struct ttls_parse_avp*,int ,int) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,unsigned long,unsigned long) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int * wpabuf_mhead (struct wpabuf*) ;

__attribute__((used)) static int eap_ttls_parse_avps(struct wpabuf *in_decrypted,
          struct ttls_parse_avp *parse)
{
 u8 *pos;
 size_t left, pad;
 int avp_length;

 pos = wpabuf_mhead(in_decrypted);
 left = wpabuf_len(in_decrypted);
 wpa_hexdump(MSG_DEBUG, "EAP-TTLS: Decrypted Phase 2 AVPs", pos, left);
 if (left < sizeof(struct ttls_avp)) {
  wpa_printf(MSG_WARNING, "EAP-TTLS: Too short Phase 2 AVP frame"
      " len=%lu expected %lu or more - dropped",
      (unsigned long) left,
      (unsigned long) sizeof(struct ttls_avp));
  return -1;
 }


 os_memset(parse, 0, sizeof(*parse));

 while (left > 0) {
  avp_length = eap_ttls_parse_avp(pos, left, parse);
  if (avp_length < 0)
   return -1;

  pad = (4 - (avp_length & 3)) & 3;
  pos += avp_length + pad;
  if (left < avp_length + pad)
   left = 0;
  else
   left -= avp_length + pad;
 }

 return 0;
}
