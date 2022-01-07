
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int eap_sim_db_priv; int identity_len; int identity; } ;
struct eap_aka_data {scalar_t__ eap_method; int identity_round; void* notification; int permanent; } ;


 char EAP_AKA_PERMANENT_PREFIX ;
 char EAP_AKA_PRIME_PERMANENT_PREFIX ;
 char EAP_AKA_PRIME_PSEUDONYM_PREFIX ;
 char EAP_AKA_PRIME_REAUTH_ID_PREFIX ;
 char EAP_AKA_PSEUDONYM_PREFIX ;
 char EAP_AKA_REAUTH_ID_PREFIX ;
 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 scalar_t__ EAP_TYPE_AKA ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int MSG_DEBUG ;
 int NOTIFICATION ;
 scalar_t__ eap_aka_check_identity_reauth (struct eap_sm*,struct eap_aka_data*,char*) ;
 int eap_aka_fullauth (struct eap_sm*,struct eap_aka_data*) ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 char* eap_sim_db_get_permanent (int ,char*) ;
 int os_free (char*) ;
 int os_strlcpy (int ,char const*,int) ;
 char* sim_get_username (int ,int ) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_aka_determine_identity(struct eap_sm *sm,
           struct eap_aka_data *data)
{
 char *username;

 wpa_hexdump_ascii(MSG_DEBUG, "EAP-AKA: Identity",
     sm->identity, sm->identity_len);

 username = sim_get_username(sm->identity, sm->identity_len);
 if (username == ((void*)0)) {
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, NOTIFICATION);
  return;
 }

 if (eap_aka_check_identity_reauth(sm, data, username) > 0) {
  os_free(username);
  return;
 }

 if (((data->eap_method == EAP_TYPE_AKA_PRIME &&
       username[0] == EAP_AKA_PRIME_REAUTH_ID_PREFIX) ||
      (data->eap_method == EAP_TYPE_AKA &&
       username[0] == EAP_AKA_REAUTH_ID_PREFIX)) &&
     data->identity_round == 1) {


  os_free(username);
  return;
 }

 if ((data->eap_method == EAP_TYPE_AKA_PRIME &&
      username[0] == EAP_AKA_PRIME_PSEUDONYM_PREFIX) ||
     (data->eap_method == EAP_TYPE_AKA &&
      username[0] == EAP_AKA_PSEUDONYM_PREFIX)) {
  const char *permanent;
  wpa_printf(MSG_DEBUG, "EAP-AKA: Pseudonym username '%s'",
      username);
  permanent = eap_sim_db_get_permanent(
   sm->eap_sim_db_priv, username);
  os_free(username);
  if (permanent == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "EAP-AKA: Unknown pseudonym "
       "identity - request permanent identity");

   return;
  }
  os_strlcpy(data->permanent, permanent,
      sizeof(data->permanent));
 } else if ((data->eap_method == EAP_TYPE_AKA_PRIME &&
      username[0] == EAP_AKA_PRIME_PERMANENT_PREFIX) ||
     (data->eap_method == EAP_TYPE_AKA &&
      username[0] == EAP_AKA_PERMANENT_PREFIX)) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Permanent username '%s'",
      username);
  os_strlcpy(data->permanent, username, sizeof(data->permanent));
  os_free(username);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Unrecognized username '%s'",
      username);
  os_free(username);
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, NOTIFICATION);
  return;
 }

 eap_aka_fullauth(sm, data);
}
