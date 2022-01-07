
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_teap_data {int session_ticket_used; int provisioning; TYPE_1__* current_pac; scalar_t__ provisioning_allowed; } ;
struct TYPE_2__ {int pac_key; } ;


 int EAP_TEAP_PAC_KEY_LEN ;
 int MSG_DEBUG ;
 int os_memcpy (int *,int ,int ) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_teap_session_ticket_cb(void *ctx, const u8 *ticket, size_t len,
          const u8 *client_random,
          const u8 *server_random,
          u8 *master_secret)
{
 struct eap_teap_data *data = ctx;

 wpa_printf(MSG_DEBUG, "EAP-TEAP: SessionTicket callback");

 if (!master_secret) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: SessionTicket failed - fall back to full TLS handshake");
  data->session_ticket_used = 0;
  if (data->provisioning_allowed) {
   wpa_printf(MSG_DEBUG,
       "EAP-TEAP: Try to provision a new PAC-Key");
   data->provisioning = 1;
   data->current_pac = ((void*)0);
  }
  return 0;
 }

 wpa_hexdump(MSG_DEBUG, "EAP-TEAP: SessionTicket", ticket, len);

 if (!data->current_pac) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: No PAC-Key available for using SessionTicket");
  data->session_ticket_used = 0;
  return 0;
 }


 os_memcpy(master_secret, data->current_pac->pac_key,
    EAP_TEAP_PAC_KEY_LEN);

 data->session_ticket_used = 1;

 return 1;
}
