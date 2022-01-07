
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eap_gpsk_data {int dummy; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static const u8 * eap_gpsk_validate_pd_payload_2(struct eap_gpsk_data *data,
       const u8 *pos, const u8 *end)
{
 u16 alen;

 if (pos == ((void*)0))
  return ((void*)0);

 if (end - pos < 2) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for "
      "PD_Payload_2 length");
  return ((void*)0);
 }
 alen = WPA_GET_BE16(pos);
 pos += 2;
 if (end - pos < alen) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for "
      "%d-octet PD_Payload_2", alen);
  return ((void*)0);
 }
 wpa_hexdump(MSG_DEBUG, "EAP-GPSK: PD_Payload_2", pos, alen);
 pos += alen;

 return pos;
}
