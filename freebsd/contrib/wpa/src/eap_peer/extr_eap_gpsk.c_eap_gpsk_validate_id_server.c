
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_gpsk_data {size_t id_server_len; int const* id_server; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 size_t WPA_GET_BE16 (int const*) ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static const u8 * eap_gpsk_validate_id_server(struct eap_gpsk_data *data,
           const u8 *pos, const u8 *end)
{
 size_t len;

 if (pos == ((void*)0))
  return ((void*)0);

 if (end - pos < (int) 2) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for "
      "length(ID_Server)");
  return ((void*)0);
 }

 len = WPA_GET_BE16(pos);
 pos += 2;

 if (end - pos < (int) len) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for "
      "ID_Server");
  return ((void*)0);
 }

 if (len != data->id_server_len ||
     os_memcmp(pos, data->id_server, len) != 0) {
  wpa_printf(MSG_INFO, "EAP-GPSK: ID_Server did not match with "
      "the one used in GPSK-1");
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-GPSK: ID_Server in GPSK-1",
      data->id_server, data->id_server_len);
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-GPSK: ID_Server in GPSK-3",
      pos, len);
  return ((void*)0);
 }

 pos += len;

 return pos;
}
