
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ eap_sim_aka_result_ind; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {int num_chal; int nonce_mt; int k_aut; scalar_t__ rand; } ;


 int EAP_CODE_REQUEST ;
 int EAP_SIM_AT_MAC ;
 int EAP_SIM_AT_RAND ;
 int EAP_SIM_AT_RESULT_IND ;
 int EAP_SIM_NONCE_MT_LEN ;
 int EAP_SIM_SUBTYPE_CHALLENGE ;
 int EAP_TYPE_SIM ;
 int GSM_RAND_LEN ;
 int MSG_DEBUG ;
 scalar_t__ eap_sim_build_encr (struct eap_sm*,struct eap_sim_data*,struct eap_sim_msg*,int ,int *) ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int) ;
 int eap_sim_msg_add_mac (struct eap_sim_msg*,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int ,int ,int ) ;
 int eap_sim_msg_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_sim_build_challenge(struct eap_sm *sm,
            struct eap_sim_data *data,
            u8 id)
{
 struct eap_sim_msg *msg;

 wpa_printf(MSG_DEBUG, "EAP-SIM: Generating Challenge");
 msg = eap_sim_msg_init(EAP_CODE_REQUEST, id, EAP_TYPE_SIM,
          EAP_SIM_SUBTYPE_CHALLENGE);
 wpa_printf(MSG_DEBUG, "   AT_RAND");
 eap_sim_msg_add(msg, EAP_SIM_AT_RAND, 0, (u8 *) data->rand,
   data->num_chal * GSM_RAND_LEN);

 if (eap_sim_build_encr(sm, data, msg, 0, ((void*)0))) {
  eap_sim_msg_free(msg);
  return ((void*)0);
 }

 if (sm->eap_sim_aka_result_ind) {
  wpa_printf(MSG_DEBUG, "   AT_RESULT_IND");
  eap_sim_msg_add(msg, EAP_SIM_AT_RESULT_IND, 0, ((void*)0), 0);
 }

 wpa_printf(MSG_DEBUG, "   AT_MAC");
 eap_sim_msg_add_mac(msg, EAP_SIM_AT_MAC);
 return eap_sim_msg_finish(msg, EAP_TYPE_SIM, data->k_aut,
      data->nonce_mt, EAP_SIM_NONCE_MT_LEN);
}
