
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int eap_sim_db_priv; scalar_t__ eap_sim_aka_result_ind; } ;
struct eap_sim_data {int num_chal; int use_result_ind; int * next_reauth_id; int mk; scalar_t__ counter; int permanent; int * next_pseudonym; int notification; scalar_t__ sres; int k_aut; } ;
struct eap_sim_attrs {scalar_t__ result_ind; int * mac; } ;


 int EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 int EAP_SIM_SRES_LEN ;
 int EAP_SIM_SUCCESS ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int NOTIFICATION ;
 int SUCCESS ;
 int eap_sim_db_add_pseudonym (int ,int ,int *) ;
 int eap_sim_db_add_reauth (int ,int ,int *,scalar_t__,int ) ;
 int eap_sim_state (struct eap_sim_data*,int ) ;
 scalar_t__ eap_sim_verify_mac (int ,struct wpabuf*,int *,int *,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_sim_process_challenge(struct eap_sm *sm,
          struct eap_sim_data *data,
          struct wpabuf *respData,
          struct eap_sim_attrs *attr)
{
 if (attr->mac == ((void*)0) ||
     eap_sim_verify_mac(data->k_aut, respData, attr->mac,
          (u8 *) data->sres,
          data->num_chal * EAP_SIM_SRES_LEN)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Challenge message "
      "did not include valid AT_MAC");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_sim_state(data, NOTIFICATION);
  return;
 }

 wpa_printf(MSG_DEBUG, "EAP-SIM: Challenge response includes the "
     "correct AT_MAC");
 if (sm->eap_sim_aka_result_ind && attr->result_ind) {
  data->use_result_ind = 1;
  data->notification = EAP_SIM_SUCCESS;
  eap_sim_state(data, NOTIFICATION);
 } else
  eap_sim_state(data, SUCCESS);

 if (data->next_pseudonym) {
  eap_sim_db_add_pseudonym(sm->eap_sim_db_priv, data->permanent,
      data->next_pseudonym);
  data->next_pseudonym = ((void*)0);
 }
 if (data->next_reauth_id) {
  eap_sim_db_add_reauth(sm->eap_sim_db_priv, data->permanent,
          data->next_reauth_id, data->counter + 1,
          data->mk);
  data->next_reauth_id = ((void*)0);
 }
}
