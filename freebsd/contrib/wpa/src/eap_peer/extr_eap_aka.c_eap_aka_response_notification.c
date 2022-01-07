
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {int eap_method; int k_encr; int counter; scalar_t__ reauth; int * k_aut; } ;


 int EAP_AKA_SUBTYPE_NOTIFICATION ;
 int EAP_CODE_RESPONSE ;
 int EAP_SIM_AT_COUNTER ;
 int EAP_SIM_AT_ENCR_DATA ;
 int EAP_SIM_AT_IV ;
 int EAP_SIM_AT_MAC ;
 int EAP_SIM_AT_PADDING ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 scalar_t__ eap_sim_msg_add_encr_end (struct eap_sim_msg*,int ,int ) ;
 int eap_sim_msg_add_encr_start (struct eap_sim_msg*,int ,int ) ;
 int eap_sim_msg_add_mac (struct eap_sim_msg*,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int *,int *,int ) ;
 int eap_sim_msg_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_aka_response_notification(struct eap_aka_data *data,
           u8 id, u16 notification)
{
 struct eap_sim_msg *msg;
 u8 *k_aut = (notification & 0x4000) == 0 ? data->k_aut : ((void*)0);

 wpa_printf(MSG_DEBUG, "Generating EAP-AKA Notification (id=%d)", id);
 msg = eap_sim_msg_init(EAP_CODE_RESPONSE, id, data->eap_method,
          EAP_AKA_SUBTYPE_NOTIFICATION);
 if (k_aut && data->reauth) {
  wpa_printf(MSG_DEBUG, "   AT_IV");
  wpa_printf(MSG_DEBUG, "   AT_ENCR_DATA");
  eap_sim_msg_add_encr_start(msg, EAP_SIM_AT_IV,
        EAP_SIM_AT_ENCR_DATA);
  wpa_printf(MSG_DEBUG, "   *AT_COUNTER %d", data->counter);
  eap_sim_msg_add(msg, EAP_SIM_AT_COUNTER, data->counter,
    ((void*)0), 0);
  if (eap_sim_msg_add_encr_end(msg, data->k_encr,
          EAP_SIM_AT_PADDING)) {
   wpa_printf(MSG_WARNING, "EAP-AKA: Failed to encrypt "
       "AT_ENCR_DATA");
   eap_sim_msg_free(msg);
   return ((void*)0);
  }
 }
 if (k_aut) {
  wpa_printf(MSG_DEBUG, "   AT_MAC");
  eap_sim_msg_add_mac(msg, EAP_SIM_AT_MAC);
 }
 return eap_sim_msg_finish(msg, data->eap_method, k_aut, (u8 *) "", 0);
}
