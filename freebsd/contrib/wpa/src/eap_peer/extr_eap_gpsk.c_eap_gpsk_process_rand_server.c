
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_gpsk_data {int rand_server; } ;


 int EAP_GPSK_RAND_LEN ;
 int MSG_DEBUG ;
 int os_memcpy (int ,int const*,int) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static const u8 * eap_gpsk_process_rand_server(struct eap_gpsk_data *data,
            const u8 *pos, const u8 *end)
{
 if (pos == ((void*)0))
  return ((void*)0);

 if (end - pos < EAP_GPSK_RAND_LEN) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: RAND_Server overflow");
  return ((void*)0);
 }
 os_memcpy(data->rand_server, pos, EAP_GPSK_RAND_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-GPSK: RAND_Server",
      data->rand_server, EAP_GPSK_RAND_LEN);
 pos += EAP_GPSK_RAND_LEN;

 return pos;
}
