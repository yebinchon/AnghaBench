
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pac_tlv_hdr {int len; int type; } ;
struct eap_fast_pac {size_t pac_info_len; int * a_id_info; int * a_id; int * pac_info; int pac_type; } ;


 int MSG_DEBUG ;
 int PAC_TYPE_TUNNEL_PAC ;
 void* be_to_host16 (int ) ;
 scalar_t__ eap_fast_parse_pac_info (struct eap_fast_pac*,int,int *,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_fast_process_pac_info(struct eap_fast_pac *entry)
{
 struct pac_tlv_hdr *hdr;
 u8 *pos;
 size_t left, len;
 int type;




 entry->pac_type = PAC_TYPE_TUNNEL_PAC;

 pos = entry->pac_info;
 left = entry->pac_info_len;
 while (left > sizeof(*hdr)) {
  hdr = (struct pac_tlv_hdr *) pos;
  type = be_to_host16(hdr->type);
  len = be_to_host16(hdr->len);
  pos += sizeof(*hdr);
  left -= sizeof(*hdr);
  if (len > left) {
   wpa_printf(MSG_DEBUG, "EAP-FAST: PAC-Info overrun "
       "(type=%d len=%lu left=%lu)",
       type, (unsigned long) len,
       (unsigned long) left);
   return -1;
  }

  if (eap_fast_parse_pac_info(entry, type, pos, len) < 0)
   return -1;

  pos += len;
  left -= len;
 }

 if (entry->a_id == ((void*)0) || entry->a_id_info == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: PAC-Info does not include "
      "all the required fields");
  return -1;
 }

 return 0;
}
