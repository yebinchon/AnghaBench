
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef scalar_t__ u16 ;
struct eap_sm {int eap_sim_id; int eap_sim_db_priv; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {scalar_t__ eap_method; scalar_t__ counter; int k_encr; int * next_reauth_id; int * next_pseudonym; } ;


 scalar_t__ EAP_AKA_MAX_FAST_REAUTHS ;
 int EAP_SIM_AT_COUNTER ;
 int EAP_SIM_AT_ENCR_DATA ;
 int EAP_SIM_AT_IV ;
 int EAP_SIM_AT_NEXT_PSEUDONYM ;
 int EAP_SIM_AT_NEXT_REAUTH_ID ;
 int EAP_SIM_AT_NONCE_S ;
 int EAP_SIM_AT_PADDING ;
 int EAP_SIM_DB_AKA ;
 int EAP_SIM_DB_AKA_PRIME ;
 scalar_t__ EAP_SIM_NONCE_S_LEN ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int * eap_sim_db_get_next_pseudonym (int ,int ) ;
 int * eap_sim_db_get_next_reauth_id (int ,int ) ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,scalar_t__,int const*,scalar_t__) ;
 scalar_t__ eap_sim_msg_add_encr_end (struct eap_sim_msg*,int ,int ) ;
 int eap_sim_msg_add_encr_start (struct eap_sim_msg*,int ,int ) ;
 int os_free (int *) ;
 scalar_t__ os_strlen (int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_aka_build_encr(struct eap_sm *sm, struct eap_aka_data *data,
         struct eap_sim_msg *msg, u16 counter,
         const u8 *nonce_s)
{
 os_free(data->next_pseudonym);
 if (!(sm->eap_sim_id & 0x01)) {

  data->next_pseudonym = ((void*)0);
 } else if (!nonce_s) {
  data->next_pseudonym =
   eap_sim_db_get_next_pseudonym(
    sm->eap_sim_db_priv,
    data->eap_method == EAP_TYPE_AKA_PRIME ?
    EAP_SIM_DB_AKA_PRIME : EAP_SIM_DB_AKA);
 } else {

  data->next_pseudonym = ((void*)0);
 }
 os_free(data->next_reauth_id);
 if (!(sm->eap_sim_id & 0x02)) {

  data->next_reauth_id = ((void*)0);
 } else if (data->counter <= EAP_AKA_MAX_FAST_REAUTHS) {
  data->next_reauth_id =
   eap_sim_db_get_next_reauth_id(
    sm->eap_sim_db_priv,
    data->eap_method == EAP_TYPE_AKA_PRIME ?
    EAP_SIM_DB_AKA_PRIME : EAP_SIM_DB_AKA);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Max fast re-authentication "
      "count exceeded - force full authentication");
  data->next_reauth_id = ((void*)0);
 }

 if (data->next_pseudonym == ((void*)0) && data->next_reauth_id == ((void*)0) &&
     counter == 0 && nonce_s == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "   AT_IV");
 wpa_printf(MSG_DEBUG, "   AT_ENCR_DATA");
 eap_sim_msg_add_encr_start(msg, EAP_SIM_AT_IV, EAP_SIM_AT_ENCR_DATA);

 if (counter > 0) {
  wpa_printf(MSG_DEBUG, "   *AT_COUNTER (%u)", counter);
  eap_sim_msg_add(msg, EAP_SIM_AT_COUNTER, counter, ((void*)0), 0);
 }

 if (nonce_s) {
  wpa_printf(MSG_DEBUG, "   *AT_NONCE_S");
  eap_sim_msg_add(msg, EAP_SIM_AT_NONCE_S, 0, nonce_s,
    EAP_SIM_NONCE_S_LEN);
 }

 if (data->next_pseudonym) {
  wpa_printf(MSG_DEBUG, "   *AT_NEXT_PSEUDONYM (%s)",
      data->next_pseudonym);
  eap_sim_msg_add(msg, EAP_SIM_AT_NEXT_PSEUDONYM,
    os_strlen(data->next_pseudonym),
    (u8 *) data->next_pseudonym,
    os_strlen(data->next_pseudonym));
 }

 if (data->next_reauth_id) {
  wpa_printf(MSG_DEBUG, "   *AT_NEXT_REAUTH_ID (%s)",
      data->next_reauth_id);
  eap_sim_msg_add(msg, EAP_SIM_AT_NEXT_REAUTH_ID,
    os_strlen(data->next_reauth_id),
    (u8 *) data->next_reauth_id,
    os_strlen(data->next_reauth_id));
 }

 if (eap_sim_msg_add_encr_end(msg, data->k_encr, EAP_SIM_AT_PADDING)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Failed to encrypt "
      "AT_ENCR_DATA");
  return -1;
 }

 return 0;
}
