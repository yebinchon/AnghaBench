
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct os_time {int sec; } ;
struct eap_fast_pac {size_t a_id_len; size_t i_id_len; size_t a_id_info_len; int pac_type; int * a_id_info; int * i_id; int * a_id; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;




 int PAC_TYPE_MACHINE_AUTHENTICATION ;

 int PAC_TYPE_TUNNEL_PAC ;
 int PAC_TYPE_USER_AUTHORIZATION ;
 int WPA_GET_BE16 (int *) ;
 int WPA_GET_BE32 (int *) ;
 int os_get_time (struct os_time*) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int eap_fast_parse_pac_info(struct eap_fast_pac *entry, int type,
       u8 *pos, size_t len)
{
 u16 pac_type;
 u32 lifetime;
 struct os_time now;

 switch (type & 0x7fff) {
 case 130:
  if (len != 4) {
   wpa_hexdump(MSG_DEBUG, "EAP-FAST: PAC-Info - "
        "Invalid CRED_LIFETIME length - ignored",
        pos, len);
   return 0;
  }







  lifetime = WPA_GET_BE32(pos);
  os_get_time(&now);
  wpa_printf(MSG_DEBUG, "EAP-FAST: PAC-Info - CRED_LIFETIME %d "
      "(%d days)",
      lifetime, (lifetime - (u32) now.sec) / 86400);
  break;
 case 132:
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-FAST: PAC-Info - A-ID",
      pos, len);
  entry->a_id = pos;
  entry->a_id_len = len;
  break;
 case 129:
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-FAST: PAC-Info - I-ID",
      pos, len);
  entry->i_id = pos;
  entry->i_id_len = len;
  break;
 case 131:
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-FAST: PAC-Info - A-ID-Info",
      pos, len);
  entry->a_id_info = pos;
  entry->a_id_info_len = len;
  break;
 case 128:

  if (len != 2) {
   wpa_printf(MSG_INFO, "EAP-FAST: Invalid PAC-Type "
       "length %lu (expected 2)",
       (unsigned long) len);
   wpa_hexdump_ascii(MSG_DEBUG,
       "EAP-FAST: PAC-Info - PAC-Type",
       pos, len);
   return -1;
  }
  pac_type = WPA_GET_BE16(pos);
  if (pac_type != PAC_TYPE_TUNNEL_PAC &&
      pac_type != PAC_TYPE_USER_AUTHORIZATION &&
      pac_type != PAC_TYPE_MACHINE_AUTHENTICATION) {
   wpa_printf(MSG_INFO, "EAP-FAST: Unsupported PAC Type "
       "%d", pac_type);
   return -1;
  }

  wpa_printf(MSG_DEBUG, "EAP-FAST: PAC-Info - PAC-Type %d",
      pac_type);
  entry->pac_type = pac_type;
  break;
 default:
  wpa_printf(MSG_DEBUG, "EAP-FAST: Ignored unknown PAC-Info "
      "type %d", type);
  break;
 }

 return 0;
}
