
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {int k_aut; int k_encr; int counter; scalar_t__ reauth; scalar_t__ use_result_ind; int notification; } ;


 int EAP_CODE_REQUEST ;
 int EAP_SIM_AT_COUNTER ;
 int EAP_SIM_AT_ENCR_DATA ;
 int EAP_SIM_AT_IV ;
 int EAP_SIM_AT_MAC ;
 int EAP_SIM_AT_NOTIFICATION ;
 int EAP_SIM_AT_PADDING ;
 int EAP_SIM_SUBTYPE_NOTIFICATION ;
 int EAP_TYPE_SIM ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 scalar_t__ eap_sim_msg_add_encr_end (struct eap_sim_msg*,int ,int ) ;
 int eap_sim_msg_add_encr_start (struct eap_sim_msg*,int ,int ) ;
 int eap_sim_msg_add_mac (struct eap_sim_msg*,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int ,int *,int ) ;
 int eap_sim_msg_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_sim_build_notification(struct eap_sm *sm,
        struct eap_sim_data *data,
        u8 id)
{
 struct eap_sim_msg *msg;

 wpa_printf(MSG_DEBUG, "EAP-SIM: Generating Notification");
 msg = eap_sim_msg_init(EAP_CODE_REQUEST, id, EAP_TYPE_SIM,
          EAP_SIM_SUBTYPE_NOTIFICATION);
 wpa_printf(MSG_DEBUG, "   AT_NOTIFICATION (%d)", data->notification);
 eap_sim_msg_add(msg, EAP_SIM_AT_NOTIFICATION, data->notification,
   ((void*)0), 0);
 if (data->use_result_ind) {
  if (data->reauth) {
   wpa_printf(MSG_DEBUG, "   AT_IV");
   wpa_printf(MSG_DEBUG, "   AT_ENCR_DATA");
   eap_sim_msg_add_encr_start(msg, EAP_SIM_AT_IV,
         EAP_SIM_AT_ENCR_DATA);
   wpa_printf(MSG_DEBUG, "   *AT_COUNTER (%u)",
       data->counter);
   eap_sim_msg_add(msg, EAP_SIM_AT_COUNTER, data->counter,
     ((void*)0), 0);

   if (eap_sim_msg_add_encr_end(msg, data->k_encr,
           EAP_SIM_AT_PADDING)) {
    wpa_printf(MSG_WARNING, "EAP-SIM: Failed to "
        "encrypt AT_ENCR_DATA");
    eap_sim_msg_free(msg);
    return ((void*)0);
   }
  }

  wpa_printf(MSG_DEBUG, "   AT_MAC");
  eap_sim_msg_add_mac(msg, EAP_SIM_AT_MAC);
 }
 return eap_sim_msg_finish(msg, EAP_TYPE_SIM, data->k_aut, ((void*)0), 0);
}
