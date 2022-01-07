
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_sm {int eap_sim_db_priv; scalar_t__ eap_sim_aka_result_ind; } ;
struct eap_sim_attrs {int kdf_count; scalar_t__* kdf; int res_len; int res_len_bits; scalar_t__ result_ind; int * res; int * mac; int checkcode_len; scalar_t__ checkcode; } ;
struct eap_aka_data {scalar_t__ eap_method; scalar_t__ kdf; int res_len; int use_result_ind; int * next_reauth_id; int mk; scalar_t__ counter; int permanent; int k_re; int k_aut; int k_encr; int * next_pseudonym; void* notification; int res; } ;


 scalar_t__ EAP_AKA_PRIME_KDF ;
 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 void* EAP_SIM_SUCCESS ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int NOTIFICATION ;
 int SUCCESS ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 scalar_t__ eap_aka_verify_checkcode (struct eap_aka_data*,scalar_t__,int ) ;
 scalar_t__ eap_aka_verify_mac (struct eap_aka_data*,struct wpabuf*,int *,int *,int ) ;
 int eap_sim_db_add_pseudonym (int ,int ,int *) ;
 int eap_sim_db_add_reauth (int ,int ,int *,scalar_t__,int ) ;
 int eap_sim_db_add_reauth_prime (int ,int ,int *,scalar_t__,int ,int ,int ) ;
 scalar_t__ os_memcmp_const (int *,int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_aka_process_challenge(struct eap_sm *sm,
          struct eap_aka_data *data,
          struct wpabuf *respData,
          struct eap_sim_attrs *attr)
{
 wpa_printf(MSG_DEBUG, "EAP-AKA: Processing Challenge");
 if (attr->checkcode &&
     eap_aka_verify_checkcode(data, attr->checkcode,
         attr->checkcode_len)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Invalid AT_CHECKCODE in the "
      "message");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, NOTIFICATION);
  return;
 }
 if (attr->mac == ((void*)0) ||
     eap_aka_verify_mac(data, respData, attr->mac, ((void*)0), 0)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Challenge message "
      "did not include valid AT_MAC");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, NOTIFICATION);
  return;
 }





 if (attr->res == ((void*)0) || attr->res_len < data->res_len ||
     attr->res_len_bits != data->res_len * 8 ||
     os_memcmp_const(attr->res, data->res, data->res_len) != 0) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Challenge message did not "
      "include valid AT_RES (attr len=%lu, res len=%lu "
      "bits, expected %lu bits)",
      (unsigned long) attr->res_len,
      (unsigned long) attr->res_len_bits,
      (unsigned long) data->res_len * 8);
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, NOTIFICATION);
  return;
 }

 wpa_printf(MSG_DEBUG, "EAP-AKA: Challenge response includes the "
     "correct AT_MAC");
 if (sm->eap_sim_aka_result_ind && attr->result_ind) {
  data->use_result_ind = 1;
  data->notification = EAP_SIM_SUCCESS;
  eap_aka_state(data, NOTIFICATION);
 } else
  eap_aka_state(data, SUCCESS);

 if (data->next_pseudonym) {
  eap_sim_db_add_pseudonym(sm->eap_sim_db_priv, data->permanent,
      data->next_pseudonym);
  data->next_pseudonym = ((void*)0);
 }
 if (data->next_reauth_id) {
  if (data->eap_method == EAP_TYPE_AKA_PRIME) {
  } else {
   eap_sim_db_add_reauth(sm->eap_sim_db_priv,
           data->permanent,
           data->next_reauth_id,
           data->counter + 1,
           data->mk);
  }
  data->next_reauth_id = ((void*)0);
 }
}
