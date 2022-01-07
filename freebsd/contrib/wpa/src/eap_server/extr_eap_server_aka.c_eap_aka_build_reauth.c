
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ eap_sim_aka_result_ind; int identity_len; int identity; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {int reauth_mac; int k_aut; int eap_method; int nonce_s; int counter; int emsk; int msk; int mk; int k_encr; int k_re; } ;


 int EAP_AKA_SUBTYPE_REAUTHENTICATION ;
 int EAP_CODE_REQUEST ;
 int EAP_SIM_AT_MAC ;
 int EAP_SIM_AT_RESULT_IND ;
 scalar_t__ EAP_SIM_MAC_LEN ;
 int EAP_SIM_NONCE_S_LEN ;
 int EAP_TYPE_AKA_PRIME ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int eap_aka_add_checkcode (struct eap_aka_data*,struct eap_sim_msg*) ;
 scalar_t__ eap_aka_build_encr (struct eap_sm*,struct eap_aka_data*,struct eap_sim_msg*,int ,int ) ;
 int eap_aka_prime_derive_keys_reauth (int ,int ,int ,int ,int ,int ,int ) ;
 int eap_sim_derive_keys (int ,int ,int ,int ,int ) ;
 int eap_sim_derive_keys_reauth (int ,int ,int ,int ,int ,int ,int ) ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 int eap_sim_msg_add_mac (struct eap_sim_msg*,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int ,int *,int ) ;
 int eap_sim_msg_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int os_memcpy (int ,scalar_t__,scalar_t__) ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpabuf_head_u8 (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * eap_aka_build_reauth(struct eap_sm *sm,
         struct eap_aka_data *data, u8 id)
{
 struct eap_sim_msg *msg;
 struct wpabuf *buf;

 wpa_printf(MSG_DEBUG, "EAP-AKA: Generating Re-authentication");

 if (random_get_bytes(data->nonce_s, EAP_SIM_NONCE_S_LEN))
  return ((void*)0);
 wpa_hexdump_key(MSG_MSGDUMP, "EAP-AKA: NONCE_S",
   data->nonce_s, EAP_SIM_NONCE_S_LEN);

 if (data->eap_method == EAP_TYPE_AKA_PRIME) {
  eap_aka_prime_derive_keys_reauth(data->k_re, data->counter,
       sm->identity,
       sm->identity_len,
       data->nonce_s,
       data->msk, data->emsk);
 } else {
  eap_sim_derive_keys(data->mk, data->k_encr, data->k_aut,
        data->msk, data->emsk);
  eap_sim_derive_keys_reauth(data->counter, sm->identity,
        sm->identity_len, data->nonce_s,
        data->mk, data->msk, data->emsk);
 }

 msg = eap_sim_msg_init(EAP_CODE_REQUEST, id, data->eap_method,
          EAP_AKA_SUBTYPE_REAUTHENTICATION);

 if (eap_aka_build_encr(sm, data, msg, data->counter, data->nonce_s)) {
  eap_sim_msg_free(msg);
  return ((void*)0);
 }

 eap_aka_add_checkcode(data, msg);

 if (sm->eap_sim_aka_result_ind) {
  wpa_printf(MSG_DEBUG, "   AT_RESULT_IND");
  eap_sim_msg_add(msg, EAP_SIM_AT_RESULT_IND, 0, ((void*)0), 0);
 }

 wpa_printf(MSG_DEBUG, "   AT_MAC");
 eap_sim_msg_add_mac(msg, EAP_SIM_AT_MAC);
 buf = eap_sim_msg_finish(msg, data->eap_method, data->k_aut, ((void*)0), 0);




 os_memcpy(data->reauth_mac,
    wpabuf_head_u8(buf) + wpabuf_len(buf) - EAP_SIM_MAC_LEN,
    EAP_SIM_MAC_LEN);

 return buf;
}
