
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pac_tlv_hdr {int type; int len; } ;


 int MSG_DEBUG ;
 int PAC_TYPE_A_ID ;
 int be_to_host16 (int ) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static const u8 * eap_fast_get_a_id(const u8 *buf, size_t len, size_t *id_len)
{
 const u8 *a_id;
 const struct pac_tlv_hdr *hdr;





 a_id = buf;
 *id_len = len;
 if (len > sizeof(*hdr)) {
  int tlen;
  hdr = (const struct pac_tlv_hdr *) buf;
  tlen = be_to_host16(hdr->len);
  if (be_to_host16(hdr->type) == PAC_TYPE_A_ID &&
      sizeof(*hdr) + tlen <= len) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: A-ID was in TLV "
       "(Start)");
   a_id = (const u8 *) (hdr + 1);
   *id_len = tlen;
  }
 }
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-FAST: A-ID", a_id, *id_len);

 return a_id;
}
