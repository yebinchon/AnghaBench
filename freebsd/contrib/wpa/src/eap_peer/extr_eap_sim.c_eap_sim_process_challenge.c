
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_data {int min_num_chal; int num_chal; size_t last_eap_identity_len; size_t pseudonym_len; int use_result_ind; scalar_t__ state; scalar_t__ counter; scalar_t__ num_notification; scalar_t__ num_id_req; scalar_t__ result_ind; int k_encr; int nonce_mt; int k_aut; int emsk; int msk; int mk; scalar_t__ kc; int ver_list_len; int ver_list; int selected_version; int * pseudonym; int * last_eap_identity; int rand; scalar_t__ reauth; } ;
struct eap_sim_attrs {int num_chal; scalar_t__ result_ind; int iv; int encr_data_len; scalar_t__ encr_data; int mac; scalar_t__ rand; } ;
struct eap_peer_config {size_t imsi_identity_len; int * imsi_identity; } ;


 int CLEAR_EAP_ID ;
 int CLEAR_REAUTH_ID ;
 int EAP_SIM_INSUFFICIENT_NUM_OF_CHAL ;
 int EAP_SIM_NONCE_MT_LEN ;
 int EAP_SIM_RAND_NOT_FRESH ;
 int EAP_SIM_UNABLE_TO_PROCESS_PACKET ;
 scalar_t__ FAILURE ;
 int GSM_RAND_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int RESULT_SUCCESS ;
 int SUCCESS ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int * eap_get_config_identity (struct eap_sm*,size_t*) ;
 int eap_sim_anonymous_username (int *,size_t) ;
 int eap_sim_clear_identities (struct eap_sm*,struct eap_sim_data*,int) ;
 struct wpabuf* eap_sim_client_error (struct eap_sim_data*,int ,int ) ;
 int eap_sim_derive_keys (int ,int ,int ,int ,int ) ;
 int eap_sim_derive_mk (int const*,size_t,int ,int ,int ,int ,int,int const*,int ) ;
 int eap_sim_gsm_auth (struct eap_sm*,struct eap_sim_data*) ;
 int eap_sim_learn_ids (struct eap_sm*,struct eap_sim_data*,struct eap_sim_attrs*) ;
 int * eap_sim_parse_encr (int ,scalar_t__,int ,int ,struct eap_sim_attrs*,int ) ;
 struct wpabuf* eap_sim_response_challenge (struct eap_sim_data*,int ) ;
 int eap_sim_state (struct eap_sim_data*,int ) ;
 scalar_t__ eap_sim_verify_mac (int ,struct wpabuf const*,int ,int ,int ) ;
 int os_free (int *) ;
 scalar_t__ os_memcmp (scalar_t__,scalar_t__,int) ;
 int os_memcpy (int ,scalar_t__,int) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_sim_process_challenge(struct eap_sm *sm,
       struct eap_sim_data *data,
       u8 id,
       const struct wpabuf *reqData,
       struct eap_sim_attrs *attr)
{
 const u8 *identity;
 size_t identity_len;
 struct eap_sim_attrs eattr;
 int res;

 wpa_printf(MSG_DEBUG, "EAP-SIM: subtype Challenge");
 data->reauth = 0;
 if (!attr->mac || !attr->rand) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Challenge message "
      "did not include%s%s",
      !attr->mac ? " AT_MAC" : "",
      !attr->rand ? " AT_RAND" : "");
  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);
 }

 wpa_printf(MSG_DEBUG, "EAP-SIM: %lu challenges",
     (unsigned long) attr->num_chal);
 if (attr->num_chal < data->min_num_chal) {
  wpa_printf(MSG_INFO, "EAP-SIM: Insufficient number of "
      "challenges (%lu)", (unsigned long) attr->num_chal);
  return eap_sim_client_error(data, id,
         EAP_SIM_INSUFFICIENT_NUM_OF_CHAL);
 }
 if (attr->num_chal > 3) {
  wpa_printf(MSG_INFO, "EAP-SIM: Too many challenges "
      "(%lu)", (unsigned long) attr->num_chal);
  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);
 }


 if (os_memcmp(attr->rand, attr->rand + GSM_RAND_LEN,
     GSM_RAND_LEN) == 0 ||
     (attr->num_chal > 2 &&
      (os_memcmp(attr->rand, attr->rand + 2 * GSM_RAND_LEN,
   GSM_RAND_LEN) == 0 ||
       os_memcmp(attr->rand + GSM_RAND_LEN,
   attr->rand + 2 * GSM_RAND_LEN,
   GSM_RAND_LEN) == 0))) {
  wpa_printf(MSG_INFO, "EAP-SIM: Same RAND used multiple times");
  return eap_sim_client_error(data, id,
         EAP_SIM_RAND_NOT_FRESH);
 }

 os_memcpy(data->rand, attr->rand, attr->num_chal * GSM_RAND_LEN);
 data->num_chal = attr->num_chal;

 res = eap_sim_gsm_auth(sm, data);
 if (res > 0) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Wait for external SIM processing");
  return ((void*)0);
 }
 if (res) {
  wpa_printf(MSG_WARNING, "EAP-SIM: GSM authentication failed");
  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);
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
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-SIM: Selected identity for MK "
     "derivation", identity, identity_len);
 eap_sim_derive_mk(identity, identity_len, data->nonce_mt,
     data->selected_version, data->ver_list,
     data->ver_list_len, data->num_chal,
     (const u8 *) data->kc, data->mk);
 eap_sim_derive_keys(data->mk, data->k_encr, data->k_aut, data->msk,
       data->emsk);
 if (eap_sim_verify_mac(data->k_aut, reqData, attr->mac, data->nonce_mt,
          EAP_SIM_NONCE_MT_LEN)) {
  wpa_printf(MSG_WARNING, "EAP-SIM: Challenge message "
      "used invalid AT_MAC");




  return eap_sim_client_error(data, id,
         EAP_SIM_UNABLE_TO_PROCESS_PACKET);

 }





 eap_sim_clear_identities(sm, data, CLEAR_REAUTH_ID | CLEAR_EAP_ID);

 if (attr->encr_data) {
  u8 *decrypted;
  decrypted = eap_sim_parse_encr(data->k_encr, attr->encr_data,
            attr->encr_data_len, attr->iv,
            &eattr, 0);
  if (decrypted == ((void*)0)) {
   return eap_sim_client_error(
    data, id, EAP_SIM_UNABLE_TO_PROCESS_PACKET);
  }
  eap_sim_learn_ids(sm, data, &eattr);
  os_free(decrypted);
 }

 if (data->result_ind && attr->result_ind)
  data->use_result_ind = 1;

 if (data->state != FAILURE) {
  eap_sim_state(data, data->use_result_ind ?
         RESULT_SUCCESS : SUCCESS);
 }

 data->num_id_req = 0;
 data->num_notification = 0;



 data->counter = 0;
 return eap_sim_response_challenge(data, id);
}
