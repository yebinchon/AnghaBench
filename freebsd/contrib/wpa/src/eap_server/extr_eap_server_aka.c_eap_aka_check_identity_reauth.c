
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eap_sim_db_priv; } ;
struct eap_aka_data {scalar_t__ eap_method; TYPE_1__* reauth; int mk; int k_re; int k_aut; int k_encr; int counter; int permanent; } ;
struct TYPE_2__ {int mk; int k_re; int k_aut; int k_encr; int counter; int permanent; } ;


 int EAP_AKA_PRIME_K_AUT_LEN ;
 int EAP_AKA_PRIME_K_RE_LEN ;
 char const EAP_AKA_PRIME_REAUTH_ID_PREFIX ;
 char const EAP_AKA_REAUTH_ID_PREFIX ;
 int EAP_SIM_K_ENCR_LEN ;
 int EAP_SIM_MK_LEN ;
 scalar_t__ EAP_TYPE_AKA ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int MSG_DEBUG ;
 int REAUTH ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 TYPE_1__* eap_sim_db_get_reauth_entry (int ,char const*) ;
 int os_memcpy (int ,int ,int ) ;
 int os_strlcpy (int ,int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_aka_check_identity_reauth(struct eap_sm *sm,
      struct eap_aka_data *data,
      const char *username)
{
 if (data->eap_method == EAP_TYPE_AKA_PRIME &&
     username[0] != EAP_AKA_PRIME_REAUTH_ID_PREFIX)
  return 0;
 if (data->eap_method == EAP_TYPE_AKA &&
     username[0] != EAP_AKA_REAUTH_ID_PREFIX)
  return 0;

 wpa_printf(MSG_DEBUG, "EAP-AKA: Reauth username '%s'", username);
 data->reauth = eap_sim_db_get_reauth_entry(sm->eap_sim_db_priv,
         username);
 if (data->reauth == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Unknown reauth identity - "
      "request full auth identity");

  return 0;
 }

 wpa_printf(MSG_DEBUG, "EAP-AKA: Using fast re-authentication");
 os_strlcpy(data->permanent, data->reauth->permanent,
     sizeof(data->permanent));
 data->counter = data->reauth->counter;
 if (data->eap_method == EAP_TYPE_AKA_PRIME) {
  os_memcpy(data->k_encr, data->reauth->k_encr,
     EAP_SIM_K_ENCR_LEN);
  os_memcpy(data->k_aut, data->reauth->k_aut,
     EAP_AKA_PRIME_K_AUT_LEN);
  os_memcpy(data->k_re, data->reauth->k_re,
     EAP_AKA_PRIME_K_RE_LEN);
 } else {
  os_memcpy(data->mk, data->reauth->mk, EAP_SIM_MK_LEN);
 }

 eap_aka_state(data, REAUTH);
 return 1;
}
