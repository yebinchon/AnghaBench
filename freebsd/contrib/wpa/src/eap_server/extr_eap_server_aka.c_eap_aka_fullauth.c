
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ method_pending; size_t identity_len; char* identity; int imsi; int eap_sim_db_priv; } ;
struct eap_aka_data {scalar_t__* permanent; scalar_t__ eap_method; int emsk; int msk; int k_aut; int k_encr; int mk; int ck; int ik; int k_re; int notification; scalar_t__ counter; int * reauth; int network_name_len; int network_name; int autn; int res_len; int res; int rand; } ;


 int CHALLENGE ;
 scalar_t__ EAP_AKA_PERMANENT_PREFIX ;
 scalar_t__ EAP_AKA_PRIME_PERMANENT_PREFIX ;
 int EAP_SIM_DB_PENDING ;
 int EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 scalar_t__ METHOD_PENDING_NONE ;
 scalar_t__ METHOD_PENDING_WAIT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int NOTIFICATION ;
 int eap_aka_derive_mk (char*,size_t,int ,int ,int ) ;
 int eap_aka_prime_derive_ck_ik_prime (int ,int ,int ,int ,int ) ;
 int eap_aka_prime_derive_keys (char*,size_t,int ,int ,int ,int ,int ,int ,int ) ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 int eap_sim_db_get_aka_auth (int ,scalar_t__*,int ,int ,int ,int ,int ,int *,struct eap_sm*) ;
 int eap_sim_derive_keys (int ,int ,int ,int ,int ) ;
 int os_strlcpy (int ,scalar_t__*,int) ;
 int wpa_hexdump_ascii (int ,char*,char*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_aka_fullauth(struct eap_sm *sm, struct eap_aka_data *data)
{
 size_t identity_len;
 int res;

 res = eap_sim_db_get_aka_auth(sm->eap_sim_db_priv, data->permanent,
          data->rand, data->autn, data->ik,
          data->ck, data->res, &data->res_len, sm);
 if (res == EAP_SIM_DB_PENDING) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: AKA authentication data "
      "not yet available - pending request");
  sm->method_pending = METHOD_PENDING_WAIT;
  return;
 }

 if (data->permanent[0] == EAP_AKA_PERMANENT_PREFIX ||
     data->permanent[0] == EAP_AKA_PRIME_PERMANENT_PREFIX)
  os_strlcpy(sm->imsi, &data->permanent[1], sizeof(sm->imsi));
 data->reauth = ((void*)0);
 data->counter = 0;

 if (res != 0) {
  wpa_printf(MSG_INFO, "EAP-AKA: Failed to get AKA "
      "authentication data for the peer");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, NOTIFICATION);
  return;
 }
 if (sm->method_pending == METHOD_PENDING_WAIT) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: AKA authentication data "
      "available - abort pending wait");
  sm->method_pending = METHOD_PENDING_NONE;
 }

 identity_len = sm->identity_len;
 while (identity_len > 0 && sm->identity[identity_len - 1] == '\0') {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Workaround - drop last null "
      "character from identity");
  identity_len--;
 }
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-AKA: Identity for MK derivation",
     sm->identity, identity_len);

 if (data->eap_method == EAP_TYPE_AKA_PRIME) {
  eap_aka_prime_derive_keys(sm->identity, identity_len, data->ik,
       data->ck, data->k_encr, data->k_aut,
       data->k_re, data->msk, data->emsk);
 } else {
  eap_aka_derive_mk(sm->identity, identity_len, data->ik,
      data->ck, data->mk);
  eap_sim_derive_keys(data->mk, data->k_encr, data->k_aut,
        data->msk, data->emsk);
 }

 eap_aka_state(data, CHALLENGE);
}
