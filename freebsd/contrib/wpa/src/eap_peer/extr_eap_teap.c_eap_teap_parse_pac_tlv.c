
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_teap_pac {size_t pac_opaque_len; size_t pac_info_len; int * pac_info; int * pac_opaque; int pac_key; } ;


 size_t EAP_TEAP_PAC_KEY_LEN ;
 int MSG_DEBUG ;



 int os_memcpy (int ,int *,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void eap_teap_parse_pac_tlv(struct eap_teap_pac *entry, int type,
       u8 *pos, size_t len, int *pac_key_found)
{
 switch (type & 0x7fff) {
 case 129:
  wpa_hexdump_key(MSG_DEBUG, "EAP-TEAP: PAC-Key", pos, len);
  if (len != EAP_TEAP_PAC_KEY_LEN) {
   wpa_printf(MSG_DEBUG,
       "EAP-TEAP: Invalid PAC-Key length %lu",
       (unsigned long) len);
   break;
  }
  *pac_key_found = 1;
  os_memcpy(entry->pac_key, pos, len);
  break;
 case 128:
  wpa_hexdump(MSG_DEBUG, "EAP-TEAP: PAC-Opaque", pos, len);
  entry->pac_opaque = pos;
  entry->pac_opaque_len = len;
  break;
 case 130:
  wpa_hexdump(MSG_DEBUG, "EAP-TEAP: PAC-Info", pos, len);
  entry->pac_info = pos;
  entry->pac_info_len = len;
  break;
 default:
  wpa_printf(MSG_DEBUG, "EAP-TEAP: Ignored unknown PAC type %d",
      type);
  break;
 }
}
