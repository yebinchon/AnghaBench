
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_attrs {scalar_t__ result_ind; int * nonce_s; scalar_t__ counter; int * iv; int encr_data_len; int * encr_data; int * mac; int checkcode_len; scalar_t__ checkcode; } ;
struct eap_aka_data {int reauth; size_t counter; scalar_t__ eap_method; int use_result_ind; scalar_t__ state; int * nonce_s; scalar_t__ num_notification; scalar_t__ num_id_req; scalar_t__ result_ind; int emsk; int msk; int mk; scalar_t__ reauth_id_len; int * reauth_id; int k_re; scalar_t__ last_eap_identity_len; int * last_eap_identity; scalar_t__ counter_too_small; int k_encr; int * reauth_mac; } ;


 int CLEAR_EAP_ID ;
 int CLEAR_REAUTH_ID ;
 size_t EAP_AKA_MAX_FAST_REAUTHS ;
 int EAP_AKA_UNABLE_TO_PROCESS_PACKET ;
 int EAP_SIM_MAC_LEN ;
 int EAP_SIM_NONCE_S_LEN ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 scalar_t__ FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int RESULT_SUCCESS ;
 int SUCCESS ;
 int eap_aka_clear_identities (struct eap_sm*,struct eap_aka_data*,int) ;
 struct wpabuf* eap_aka_client_error (struct eap_aka_data*,int ,int ) ;
 int eap_aka_learn_ids (struct eap_sm*,struct eap_aka_data*,struct eap_sim_attrs*) ;
 int eap_aka_prime_derive_keys_reauth (int ,size_t,int *,scalar_t__,int *,int ,int ) ;
 struct wpabuf* eap_aka_response_reauth (struct eap_aka_data*,int ,int,int *) ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 scalar_t__ eap_aka_verify_checkcode (struct eap_aka_data*,scalar_t__,int ) ;
 scalar_t__ eap_aka_verify_mac (struct eap_aka_data*,struct wpabuf const*,int *,int *,int ) ;
 int eap_sim_derive_keys_reauth (size_t,int *,scalar_t__,int *,int ,int ,int ) ;
 int * eap_sim_parse_encr (int ,int *,int ,int *,struct eap_sim_attrs*,int ) ;
 int os_free (int *) ;
 int os_memcpy (int *,int *,int ) ;
 int wpa_hexdump (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_aka_process_reauthentication(
 struct eap_sm *sm, struct eap_aka_data *data, u8 id,
 const struct wpabuf *reqData, struct eap_sim_attrs *attr)
{
 struct eap_sim_attrs eattr;
 u8 *decrypted;

 wpa_printf(MSG_DEBUG, "EAP-AKA: subtype Reauthentication");

 if (attr->checkcode &&
     eap_aka_verify_checkcode(data, attr->checkcode,
         attr->checkcode_len)) {




  wpa_printf(MSG_WARNING, "EAP-AKA: Invalid AT_CHECKCODE in the "
      "message");

  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }

 if (data->reauth_id == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Server is trying "
      "reauthentication, but no reauth_id available");
  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }

 data->reauth = 1;
 if (eap_aka_verify_mac(data, reqData, attr->mac, (u8 *) "", 0)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Reauthentication "
      "did not have valid AT_MAC");
  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }





 os_memcpy(data->reauth_mac, attr->mac, EAP_SIM_MAC_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-AKA: Server MAC",
      data->reauth_mac, EAP_SIM_MAC_LEN);

 if (attr->encr_data == ((void*)0) || attr->iv == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Reauthentication "
      "message did not include encrypted data");
  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }

 decrypted = eap_sim_parse_encr(data->k_encr, attr->encr_data,
           attr->encr_data_len, attr->iv, &eattr,
           0);
 if (decrypted == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Failed to parse encrypted "
      "data from reauthentication message");
  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }

 if (eattr.nonce_s == ((void*)0) || eattr.counter < 0) {
  wpa_printf(MSG_INFO, "EAP-AKA: (encr) No%s%s in reauth packet",
      !eattr.nonce_s ? " AT_NONCE_S" : "",
      eattr.counter < 0 ? " AT_COUNTER" : "");
  os_free(decrypted);
  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }

 if (eattr.counter < 0 || (size_t) eattr.counter <= data->counter) {
  struct wpabuf *res;
  wpa_printf(MSG_INFO, "EAP-AKA: (encr) Invalid counter "
      "(%d <= %d)", eattr.counter, data->counter);
  data->counter_too_small = eattr.counter;






  os_free(data->last_eap_identity);
  data->last_eap_identity = data->reauth_id;
  data->last_eap_identity_len = data->reauth_id_len;
  data->reauth_id = ((void*)0);
  data->reauth_id_len = 0;

  res = eap_aka_response_reauth(data, id, 1, eattr.nonce_s);
  os_free(decrypted);

  return res;
 }
 data->counter = eattr.counter;

 os_memcpy(data->nonce_s, eattr.nonce_s, EAP_SIM_NONCE_S_LEN);
 wpa_hexdump(MSG_DEBUG, "EAP-AKA: (encr) AT_NONCE_S",
      data->nonce_s, EAP_SIM_NONCE_S_LEN);

 if (data->eap_method == EAP_TYPE_AKA_PRIME) {
  eap_aka_prime_derive_keys_reauth(data->k_re, data->counter,
       data->reauth_id,
       data->reauth_id_len,
       data->nonce_s,
       data->msk, data->emsk);
 } else {
  eap_sim_derive_keys_reauth(data->counter, data->reauth_id,
        data->reauth_id_len,
        data->nonce_s, data->mk,
        data->msk, data->emsk);
 }
 eap_aka_clear_identities(sm, data, CLEAR_REAUTH_ID | CLEAR_EAP_ID);
 eap_aka_learn_ids(sm, data, &eattr);

 if (data->result_ind && attr->result_ind)
  data->use_result_ind = 1;

 if (data->state != FAILURE) {
  eap_aka_state(data, data->use_result_ind ?
         RESULT_SUCCESS : SUCCESS);
 }

 data->num_id_req = 0;
 data->num_notification = 0;
 if (data->counter > EAP_AKA_MAX_FAST_REAUTHS) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Maximum number of "
      "fast reauths performed - force fullauth");
  eap_aka_clear_identities(sm, data,
      CLEAR_REAUTH_ID | CLEAR_EAP_ID);
 }
 os_free(decrypted);
 return eap_aka_response_reauth(data, id, 0, data->nonce_s);
}
