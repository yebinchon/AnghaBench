
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_gpsk_data {int const* rand_server; int const* rand_peer; } ;


 int EAP_GPSK_RAND_LEN ;
 int MSG_DEBUG ;
 scalar_t__ os_memcmp (int const*,int const*,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static const u8 * eap_gpsk_validate_rand(struct eap_gpsk_data *data,
      const u8 *pos, const u8 *end)
{
 if (end - pos < EAP_GPSK_RAND_LEN) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for "
      "RAND_Peer");
  return ((void*)0);
 }
 if (os_memcmp(pos, data->rand_peer, EAP_GPSK_RAND_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: RAND_Peer in GPSK-2 and "
      "GPSK-3 did not match");
  wpa_hexdump(MSG_DEBUG, "EAP-GPSK: RAND_Peer in GPSK-2",
       data->rand_peer, EAP_GPSK_RAND_LEN);
  wpa_hexdump(MSG_DEBUG, "EAP-GPSK: RAND_Peer in GPSK-3",
       pos, EAP_GPSK_RAND_LEN);
  return ((void*)0);
 }
 pos += EAP_GPSK_RAND_LEN;

 if (end - pos < EAP_GPSK_RAND_LEN) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for "
      "RAND_Server");
  return ((void*)0);
 }
 if (os_memcmp(pos, data->rand_server, EAP_GPSK_RAND_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: RAND_Server in GPSK-1 and "
      "GPSK-3 did not match");
  wpa_hexdump(MSG_DEBUG, "EAP-GPSK: RAND_Server in GPSK-1",
       data->rand_server, EAP_GPSK_RAND_LEN);
  wpa_hexdump(MSG_DEBUG, "EAP-GPSK: RAND_Server in GPSK-3",
       pos, EAP_GPSK_RAND_LEN);
  return ((void*)0);
 }
 pos += EAP_GPSK_RAND_LEN;

 return pos;
}
