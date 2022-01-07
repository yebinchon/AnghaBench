
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pac_tlv_hdr {int len; int type; } ;
struct eap_fast_pac {int pac_info; int pac_opaque; } ;


 int MSG_DEBUG ;
 void* be_to_host16 (int ) ;
 int eap_fast_parse_pac_tlv (struct eap_fast_pac*,int,int *,size_t,int*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_fast_process_pac_tlv(struct eap_fast_pac *entry,
        u8 *pac, size_t pac_len)
{
 struct pac_tlv_hdr *hdr;
 u8 *pos;
 size_t left, len;
 int type, pac_key_found = 0;

 pos = pac;
 left = pac_len;

 while (left > sizeof(*hdr)) {
  hdr = (struct pac_tlv_hdr *) pos;
  type = be_to_host16(hdr->type);
  len = be_to_host16(hdr->len);
  pos += sizeof(*hdr);
  left -= sizeof(*hdr);
  if (len > left) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: PAC TLV overrun "
       "(type=%d len=%lu left=%lu)",
       type, (unsigned long) len,
       (unsigned long) left);
   return -1;
  }

  eap_fast_parse_pac_tlv(entry, type, pos, len, &pac_key_found);

  pos += len;
  left -= len;
 }

 if (!pac_key_found || !entry->pac_opaque || !entry->pac_info) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: PAC TLV does not include "
      "all the required fields");
  return -1;
 }

 return 0;
}
