
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_attrs {scalar_t__ kdf_input_len; scalar_t__* kdf; scalar_t__ result_ind; int iv; int encr_data_len; scalar_t__ encr_data; int mac; int autn; int rand; scalar_t__ bidding; int kdf_input; int checkcode_len; scalar_t__ checkcode; } ;
struct eap_peer_config {size_t imsi_identity_len; int const* imsi_identity; } ;
struct eap_aka_data {scalar_t__ eap_method; scalar_t__ network_name_len; size_t last_eap_identity_len; size_t pseudonym_len; int use_result_ind; scalar_t__ state; scalar_t__ counter; scalar_t__ num_notification; scalar_t__ num_id_req; scalar_t__ result_ind; int k_encr; int emsk; int msk; int k_aut; int mk; int ck; int ik; int k_re; int const* pseudonym; int const* last_eap_identity; int const* network_name; scalar_t__ autn; scalar_t__ rand; scalar_t__ reauth; scalar_t__ kdf; } ;


 int CLEAR_EAP_ID ;
 int CLEAR_REAUTH_ID ;
 int EAP_AKA_AUTN_LEN ;
 int EAP_AKA_BIDDING_FLAG_D ;
 scalar_t__ EAP_AKA_PRIME_KDF ;
 int EAP_AKA_RAND_LEN ;
 int EAP_AKA_UNABLE_TO_PROCESS_PACKET ;
 scalar_t__ EAP_TYPE_AKA ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int EAP_VENDOR_IETF ;
 scalar_t__ FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int RESULT_SUCCESS ;
 int SUCCESS ;
 int WPA_GET_BE16 (scalar_t__) ;
 struct wpabuf* eap_aka_authentication_reject (struct eap_aka_data*,int const) ;
 int eap_aka_clear_identities (struct eap_sm*,struct eap_aka_data*,int) ;
 struct wpabuf* eap_aka_client_error (struct eap_aka_data*,int const,int ) ;
 int eap_aka_derive_mk (int const*,size_t,int ,int ,int ) ;
 int eap_aka_learn_ids (struct eap_sm*,struct eap_aka_data*,struct eap_sim_attrs*) ;
 int eap_aka_prime_derive_ck_ik_prime (int ,int ,scalar_t__,int const*,size_t) ;
 int eap_aka_prime_derive_keys (int const*,size_t,int ,int ,int ,int ,int ,int ,int ) ;
 struct wpabuf* eap_aka_prime_kdf_neg (struct eap_aka_data*,int const,struct eap_sim_attrs*) ;
 int eap_aka_prime_kdf_valid (struct eap_aka_data*,struct eap_sim_attrs*) ;
 struct wpabuf* eap_aka_response_challenge (struct eap_aka_data*,int const) ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 struct wpabuf* eap_aka_synchronization_failure (struct eap_aka_data*,int const,struct eap_sim_attrs*) ;
 int eap_aka_umts_auth (struct eap_sm*,struct eap_aka_data*) ;
 scalar_t__ eap_aka_verify_checkcode (struct eap_aka_data*,scalar_t__,int ) ;
 scalar_t__ eap_aka_verify_mac (struct eap_aka_data*,struct wpabuf const*,int ,int const*,int ) ;
 scalar_t__ eap_allowed_method (struct eap_sm*,int ,scalar_t__) ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int const* eap_get_config_identity (struct eap_sm*,size_t*) ;
 int eap_sim_anonymous_username (int const*,size_t) ;
 int eap_sim_derive_keys (int ,int ,int ,int ,int ) ;
 int const* eap_sim_parse_encr (int ,scalar_t__,int ,int ,struct eap_sim_attrs*,int ) ;
 int os_free (int const*) ;
 int os_memcpy (scalar_t__,int ,int ) ;
 int const* os_memdup (int ,scalar_t__) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_aka_process_challenge(struct eap_sm *sm,
       struct eap_aka_data *data,
       u8 id,
       const struct wpabuf *reqData,
       struct eap_sim_attrs *attr)
{
 const u8 *identity;
 size_t identity_len;
 int res;
 struct eap_sim_attrs eattr;

 wpa_printf(MSG_DEBUG, "EAP-AKA: subtype Challenge");

 if (attr->checkcode &&
     eap_aka_verify_checkcode(data, attr->checkcode,
         attr->checkcode_len)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Invalid AT_CHECKCODE in the "
      "message");




  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);

 }
 data->reauth = 0;
 if (!attr->mac || !attr->rand || !attr->autn) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Challenge message "
      "did not include%s%s%s",
      !attr->mac ? " AT_MAC" : "",
      !attr->rand ? " AT_RAND" : "",
      !attr->autn ? " AT_AUTN" : "");
  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }
 os_memcpy(data->rand, attr->rand, EAP_AKA_RAND_LEN);
 os_memcpy(data->autn, attr->autn, EAP_AKA_AUTN_LEN);

 res = eap_aka_umts_auth(sm, data);
 if (res == -1) {
  wpa_printf(MSG_WARNING, "EAP-AKA: UMTS authentication "
      "failed (AUTN)");
  return eap_aka_authentication_reject(data, id);
 } else if (res == -2) {
  wpa_printf(MSG_WARNING, "EAP-AKA: UMTS authentication "
      "failed (AUTN seq# -> AUTS)");
  return eap_aka_synchronization_failure(data, id, attr);
 } else if (res > 0) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Wait for external USIM processing");
  return ((void*)0);
 } else if (res) {
  wpa_printf(MSG_WARNING, "EAP-AKA: UMTS authentication failed");
  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }
 if (data->last_eap_identity) {
  identity = data->last_eap_identity;
  identity_len = data->last_eap_identity_len;
 } else if (data->pseudonym &&
     !eap_sim_anonymous_username(data->pseudonym,
            data->pseudonym_len)) {
  identity = data->pseudonym;
  identity_len = data->pseudonym_len;
 } else {
  struct eap_peer_config *config;

  config = eap_get_config(sm);
  if (config && config->imsi_identity) {
   identity = config->imsi_identity;
   identity_len = config->imsi_identity_len;
  } else {
   identity = eap_get_config_identity(sm, &identity_len);
  }
 }
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-AKA: Selected identity for MK "
     "derivation", identity, identity_len);
 if (data->eap_method == EAP_TYPE_AKA_PRIME) {
  eap_aka_prime_derive_keys(identity, identity_len, data->ik,
       data->ck, data->k_encr, data->k_aut,
       data->k_re, data->msk, data->emsk);
 } else {
  eap_aka_derive_mk(identity, identity_len, data->ik, data->ck,
      data->mk);
  eap_sim_derive_keys(data->mk, data->k_encr, data->k_aut,
        data->msk, data->emsk);
 }
 if (eap_aka_verify_mac(data, reqData, attr->mac, (u8 *) "", 0)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Challenge message "
      "used invalid AT_MAC");




  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);

 }





 eap_aka_clear_identities(sm, data, CLEAR_REAUTH_ID | CLEAR_EAP_ID);

 if (attr->encr_data) {
  u8 *decrypted;
  decrypted = eap_sim_parse_encr(data->k_encr, attr->encr_data,
            attr->encr_data_len, attr->iv,
            &eattr, 0);
  if (decrypted == ((void*)0)) {
   return eap_aka_client_error(
    data, id, EAP_AKA_UNABLE_TO_PROCESS_PACKET);
  }
  eap_aka_learn_ids(sm, data, &eattr);
  os_free(decrypted);
 }

 if (data->result_ind && attr->result_ind)
  data->use_result_ind = 1;

 if (data->state != FAILURE) {
  eap_aka_state(data, data->use_result_ind ?
         RESULT_SUCCESS : SUCCESS);
 }

 data->num_id_req = 0;
 data->num_notification = 0;



 data->counter = 0;
 return eap_aka_response_challenge(data, id);
}
