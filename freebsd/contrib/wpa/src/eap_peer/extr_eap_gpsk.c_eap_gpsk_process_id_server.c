
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eap_gpsk_data {int id_server_len; int * id_server; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int os_free (int *) ;
 int * os_memdup (int const*,int) ;
 int wpa_hexdump_ascii (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static const u8 * eap_gpsk_process_id_server(struct eap_gpsk_data *data,
          const u8 *pos, const u8 *end)
{
 u16 alen;

 if (end - pos < 2) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Too short GPSK-1 packet");
  return ((void*)0);
 }
 alen = WPA_GET_BE16(pos);
 pos += 2;
 if (end - pos < alen) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: ID_Server overflow");
  return ((void*)0);
 }
 os_free(data->id_server);
 data->id_server = os_memdup(pos, alen);
 if (data->id_server == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: No memory for ID_Server");
  return ((void*)0);
 }
 data->id_server_len = alen;
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-GPSK: ID_Server",
     data->id_server, data->id_server_len);
 pos += alen;

 return pos;
}
