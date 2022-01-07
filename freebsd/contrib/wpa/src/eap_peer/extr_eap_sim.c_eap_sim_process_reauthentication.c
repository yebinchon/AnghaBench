
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_data {int reauth; size_t counter; int use_result_ind; scalar_t__ state; int * nonce_s; scalar_t__ num_notification; scalar_t__ num_id_req; scalar_t__ result_ind; int emsk; int msk; int mk; scalar_t__ reauth_id_len; int * reauth_id; scalar_t__ last_eap_identity_len; int * last_eap_identity; scalar_t__ counter_too_small; int k_encr; int * reauth_mac; int k_aut; } ;
struct eap_sim_attrs {scalar_t__ result_ind; int * nonce_s; scalar_t__ counter; int * iv; int encr_data_len; int * encr_data; int * mac; } ;


 int CLEAR_EAP_ID ;
 int CLEAR_REAUTH_ID ;
 int EAP_SIM_MAC_LEN ;
 size_t EAP_SIM_MAX_FAST_REAUTHS ;
 int EAP_SIM_NONCE_S_LEN ;
 int EAP_SIM_UNABLE_TO_PROCESS_PACKET ;
 scalar_t__ FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int RESULT_SUCCESS ;
 int SUCCESS ;
 int eap_sim_clear_identities (struct eap_sm*,struct eap_sim_data*,int) ;
 struct wpabuf* eap_sim_client_error (struct eap_sim_data*,int ,int ) ;
 int eap_sim_derive_keys_reauth (size_t,int *,scalar_t__,int *,int ,int ,int ) ;
 int eap_sim_learn_ids (struct eap_sm*,struct eap_sim_data*,struct eap_sim_attrs*) ;
 int * eap_sim_parse_encr (int ,int *,int ,int *,struct eap_sim_attrs*,int ) ;
 struct wpabuf* eap_sim_response_reauth (struct eap_sim_data*,int ,int,int *) ;
 int eap_sim_state (struct eap_sim_data*,int ) ;
 scalar_t__ eap_sim_verify_mac (int ,struct wpabuf const*,int *,int *,int ) ;
 int os_free (int *) ;
 int os_memcpy (int *,int *,int ) ;
 int os_memset (int *,int,int ) ;
 int wpa_hexdump (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_sim_process_reauthentication(
 struct eap_sm *sm, struct eap_sim_data *data, u8 id,
 const struct wpabuf *reqData, struct eap_sim_attrs *attr)
{
 struct eap_sim_attrs eattr;
 u8 *decrypted;

 wpa_printf(MSG_DEBUG, "EAP-SIM: subtype Reauthentication");

 if (data->reauth_id == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Server is trying "
      "reauthentication, but no reauth_id available");
  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);
 }

 data->reauth = 1;
 if (eap_sim_verify_mac(data->k_aut, reqData, attr->mac, (u8 *) "", 0))
 {
  wpa_printf(MSG_WARNING, "EAP-SIM: Reauthentication "
      "did not have valid AT_MAC");




  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);

 }
 os_memcpy(data->reauth_mac, attr->mac, EAP_SIM_MAC_LEN);

 wpa_hexdump(MSG_DEBUG, "EAP-SIM: Server MAC",
      data->reauth_mac, EAP_SIM_MAC_LEN);

 if (attr->encr_data == ((void*)0) || attr->iv == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Reauthentication "
      "message did not include encrypted data");
  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);
 }

 decrypted = eap_sim_parse_encr(data->k_encr, attr->encr_data,
           attr->encr_data_len, attr->iv, &eattr,
           0);
 if (decrypted == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Failed to parse encrypted "
      "data from reauthentication message");
  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);
 }

 if (eattr.nonce_s == ((void*)0) || eattr.counter < 0) {
  wpa_printf(MSG_INFO, "EAP-SIM: (encr) No%s%s in reauth packet",
      !eattr.nonce_s ? " AT_NONCE_S" : "",
      eattr.counter < 0 ? " AT_COUNTER" : "");
  os_free(decrypted);
  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);
 }

 if (eattr.counter < 0 || (size_t) eattr.counter <= data->counter) {
  struct wpabuf *res;
  wpa_printf(MSG_INFO, "EAP-SIM: (encr) Invalid counter "
      "(%d <= %d)", eattr.counter, data->counter);
  data->counter_too_small = eattr.counter;






  os_free(data->last_eap_identity);
  data->last_eap_identity = data->reauth_id;
  data->last_eap_identity_len = data->reauth_id_len;
  data->reauth_id = ((void*)0);
  data->reauth_id_len = 0;

  res = eap_sim_response_reauth(data, id, 1, eattr.nonce_s);
  os_free(decrypted);

  return res;
 }
 data->counter = eattr.counter;

 os_memcpy(data->nonce_s, eattr.nonce_s, EAP_SIM_NONCE_S_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-SIM: (encr) AT_NONCE_S",
      data->nonce_s, EAP_SIM_NONCE_S_LEN);

 eap_sim_derive_keys_reauth(data->counter,
       data->reauth_id, data->reauth_id_len,
       data->nonce_s, data->mk, data->msk,
       data->emsk);
 eap_sim_clear_identities(sm, data, CLEAR_REAUTH_ID | CLEAR_EAP_ID);
 eap_sim_learn_ids(sm, data, &eattr);

 if (data->result_ind && attr->result_ind)
  data->use_result_ind = 1;

 if (data->state != FAILURE) {
  eap_sim_state(data, data->use_result_ind ?
         RESULT_SUCCESS : SUCCESS);
 }

 data->num_id_req = 0;
 data->num_notification = 0;
 if (data->counter > EAP_SIM_MAX_FAST_REAUTHS) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Maximum number of "
      "fast reauths performed - force fullauth");
  eap_sim_clear_identities(sm, data,
      CLEAR_REAUTH_ID | CLEAR_EAP_ID);
 }
 os_free(decrypted);
 return eap_sim_response_reauth(data, id, 0, data->nonce_s);
}
