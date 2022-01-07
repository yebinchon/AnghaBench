
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {int num_chal; scalar_t__ sres; int k_aut; scalar_t__ use_result_ind; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_SIM_AT_MAC ;
 int EAP_SIM_AT_RESULT_IND ;
 int EAP_SIM_SRES_LEN ;
 int EAP_SIM_SUBTYPE_CHALLENGE ;
 int EAP_TYPE_SIM ;
 int MSG_DEBUG ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 int eap_sim_msg_add_mac (struct eap_sim_msg*,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int ,int *,int) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_sim_response_challenge(struct eap_sim_data *data,
        u8 id)
{
 struct eap_sim_msg *msg;

 wpa_printf(MSG_DEBUG, "Generating EAP-SIM Challenge (id=%d)", id);
 msg = eap_sim_msg_init(EAP_CODE_RESPONSE, id, EAP_TYPE_SIM,
          EAP_SIM_SUBTYPE_CHALLENGE);
 if (data->use_result_ind) {
  wpa_printf(MSG_DEBUG, "   AT_RESULT_IND");
  eap_sim_msg_add(msg, EAP_SIM_AT_RESULT_IND, 0, ((void*)0), 0);
 }
 wpa_printf(MSG_DEBUG, "   AT_MAC");
 eap_sim_msg_add_mac(msg, EAP_SIM_AT_MAC);
 return eap_sim_msg_finish(msg, EAP_TYPE_SIM, data->k_aut,
      (u8 *) data->sres,
      data->num_chal * EAP_SIM_SRES_LEN);
}
