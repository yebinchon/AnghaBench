
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {unsigned int counter_too_small; unsigned int counter; int k_aut; scalar_t__ use_result_ind; int k_encr; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_SIM_AT_COUNTER ;
 int EAP_SIM_AT_COUNTER_TOO_SMALL ;
 int EAP_SIM_AT_ENCR_DATA ;
 int EAP_SIM_AT_IV ;
 int EAP_SIM_AT_MAC ;
 int EAP_SIM_AT_PADDING ;
 int EAP_SIM_AT_RESULT_IND ;
 int EAP_SIM_NONCE_S_LEN ;
 int EAP_SIM_SUBTYPE_REAUTHENTICATION ;
 int EAP_TYPE_SIM ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,unsigned int,int *,int ) ;
 scalar_t__ eap_sim_msg_add_encr_end (struct eap_sim_msg*,int ,int ) ;
 int eap_sim_msg_add_encr_start (struct eap_sim_msg*,int ,int ) ;
 int eap_sim_msg_add_mac (struct eap_sim_msg*,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int ,int const*,int ) ;
 int eap_sim_msg_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_sim_response_reauth(struct eap_sim_data *data,
            u8 id, int counter_too_small,
            const u8 *nonce_s)
{
 struct eap_sim_msg *msg;
 unsigned int counter;

 wpa_printf(MSG_DEBUG, "Generating EAP-SIM Reauthentication (id=%d)",
     id);
 msg = eap_sim_msg_init(EAP_CODE_RESPONSE, id, EAP_TYPE_SIM,
          EAP_SIM_SUBTYPE_REAUTHENTICATION);
 wpa_printf(MSG_DEBUG, "   AT_IV");
 wpa_printf(MSG_DEBUG, "   AT_ENCR_DATA");
 eap_sim_msg_add_encr_start(msg, EAP_SIM_AT_IV, EAP_SIM_AT_ENCR_DATA);

 if (counter_too_small) {
  wpa_printf(MSG_DEBUG, "   *AT_COUNTER_TOO_SMALL");
  eap_sim_msg_add(msg, EAP_SIM_AT_COUNTER_TOO_SMALL, 0, ((void*)0), 0);
  counter = data->counter_too_small;
 } else
  counter = data->counter;

 wpa_printf(MSG_DEBUG, "   *AT_COUNTER %d", counter);
 eap_sim_msg_add(msg, EAP_SIM_AT_COUNTER, counter, ((void*)0), 0);

 if (eap_sim_msg_add_encr_end(msg, data->k_encr, EAP_SIM_AT_PADDING)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Failed to encrypt "
      "AT_ENCR_DATA");
  eap_sim_msg_free(msg);
  return ((void*)0);
 }
 if (data->use_result_ind) {
  wpa_printf(MSG_DEBUG, "   AT_RESULT_IND");
  eap_sim_msg_add(msg, EAP_SIM_AT_RESULT_IND, 0, ((void*)0), 0);
 }
 wpa_printf(MSG_DEBUG, "   AT_MAC");
 eap_sim_msg_add_mac(msg, EAP_SIM_AT_MAC);
 return eap_sim_msg_finish(msg, EAP_TYPE_SIM, data->k_aut, nonce_s,
      EAP_SIM_NONCE_S_LEN);
}
