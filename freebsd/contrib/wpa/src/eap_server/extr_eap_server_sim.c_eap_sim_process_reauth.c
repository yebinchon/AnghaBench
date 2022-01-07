
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int eap_sim_db_priv; scalar_t__ eap_sim_aka_result_ind; } ;
struct eap_sim_data {int start_round; int use_result_ind; int * reauth; int notification; int * next_reauth_id; int mk; int counter; int permanent; int k_encr; int nonce_s; int k_aut; } ;
struct eap_sim_attrs {scalar_t__ result_ind; scalar_t__ counter_too_small; int counter; int * iv; int encr_data_len; int * encr_data; int * mac; } ;


 int EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 int EAP_SIM_NONCE_S_LEN ;
 int EAP_SIM_SUCCESS ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int NOTIFICATION ;
 int START ;
 int SUCCESS ;
 int eap_sim_db_add_reauth (int ,int ,int *,int ,int ) ;
 int eap_sim_db_remove_reauth (int ,int *) ;
 int * eap_sim_parse_encr (int ,int *,int ,int *,struct eap_sim_attrs*,int ) ;
 int eap_sim_state (struct eap_sim_data*,int ) ;
 scalar_t__ eap_sim_verify_mac (int ,struct wpabuf*,int *,int ,int ) ;
 int os_free (int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_sim_process_reauth(struct eap_sm *sm,
       struct eap_sim_data *data,
       struct wpabuf *respData,
       struct eap_sim_attrs *attr)
{
 struct eap_sim_attrs eattr;
 u8 *decrypted = ((void*)0);

 if (attr->mac == ((void*)0) ||
     eap_sim_verify_mac(data->k_aut, respData, attr->mac, data->nonce_s,
          EAP_SIM_NONCE_S_LEN)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Re-authentication message "
      "did not include valid AT_MAC");
  goto fail;
 }

 if (attr->encr_data == ((void*)0) || attr->iv == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Reauthentication "
      "message did not include encrypted data");
  goto fail;
 }

 decrypted = eap_sim_parse_encr(data->k_encr, attr->encr_data,
           attr->encr_data_len, attr->iv, &eattr,
           0);
 if (decrypted == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Failed to parse encrypted "
      "data from reauthentication message");
  goto fail;
 }

 if (eattr.counter != data->counter) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Re-authentication message "
      "used incorrect counter %u, expected %u",
      eattr.counter, data->counter);
  goto fail;
 }
 os_free(decrypted);
 decrypted = ((void*)0);

 wpa_printf(MSG_DEBUG, "EAP-SIM: Re-authentication response includes "
     "the correct AT_MAC");

 if (eattr.counter_too_small) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Re-authentication response "
      "included AT_COUNTER_TOO_SMALL - starting full "
      "authentication");
  data->start_round = -1;
  eap_sim_state(data, START);
  return;
 }

 if (sm->eap_sim_aka_result_ind && attr->result_ind) {
  data->use_result_ind = 1;
  data->notification = EAP_SIM_SUCCESS;
  eap_sim_state(data, NOTIFICATION);
 } else
  eap_sim_state(data, SUCCESS);

 if (data->next_reauth_id) {
  eap_sim_db_add_reauth(sm->eap_sim_db_priv, data->permanent,
          data->next_reauth_id,
          data->counter + 1, data->mk);
  data->next_reauth_id = ((void*)0);
 } else {
  eap_sim_db_remove_reauth(sm->eap_sim_db_priv, data->reauth);
  data->reauth = ((void*)0);
 }

 return;

fail:
 data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
 eap_sim_state(data, NOTIFICATION);
 eap_sim_db_remove_reauth(sm->eap_sim_db_priv, data->reauth);
 data->reauth = ((void*)0);
 os_free(decrypted);
}
