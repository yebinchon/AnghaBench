
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ver_list ;
typedef char u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {char* identity; size_t identity_len; char* imsi; int method_pending; int eap_sim_db_priv; } ;
struct eap_sim_data {scalar_t__ start_round; char* permanent; char* mk; int num_chal; char* nonce_mt; int notification; int emsk; int msk; int k_aut; int k_encr; scalar_t__ kc; scalar_t__ sres; scalar_t__ rand; TYPE_1__* reauth; scalar_t__ counter; } ;
struct eap_sim_attrs {size_t identity_len; int selected_version; int * nonce_mt; int * identity; } ;
struct TYPE_2__ {char* permanent; int * mk; scalar_t__ counter; } ;


 int CHALLENGE ;
 int EAP_SIM_DB_PENDING ;
 int EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 int EAP_SIM_MAX_CHAL ;
 size_t EAP_SIM_MK_LEN ;
 size_t EAP_SIM_NONCE_MT_LEN ;
 char EAP_SIM_PERMANENT_PREFIX ;
 char EAP_SIM_PSEUDONYM_PREFIX ;
 char EAP_SIM_REAUTH_ID_PREFIX ;
 int EAP_SIM_VERSION ;
 int METHOD_PENDING_WAIT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int NOTIFICATION ;
 int REAUTH ;
 int WPA_PUT_BE16 (char*,int ) ;
 int eap_sim_db_get_gsm_triplets (int ,char*,int ,char*,char*,char*,struct eap_sm*) ;
 char* eap_sim_db_get_permanent (int ,char*) ;
 TYPE_1__* eap_sim_db_get_reauth_entry (int ,char*) ;
 int eap_sim_derive_keys (char*,int ,int ,int ,int ) ;
 int eap_sim_derive_mk (char*,size_t,int *,int ,char*,int,int,char const*,char*) ;
 int eap_sim_state (struct eap_sim_data*,int ) ;
 int eap_sim_supported_ver (struct eap_sim_data*,int ) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_memcpy (char*,int *,size_t) ;
 int os_strlcpy (char*,char const*,int) ;
 char* sim_get_username (char*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,char*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_sim_process_start(struct eap_sm *sm,
      struct eap_sim_data *data,
      struct wpabuf *respData,
      struct eap_sim_attrs *attr)
{
 size_t identity_len;
 u8 ver_list[2];
 u8 *new_identity;
 char *username;

 wpa_printf(MSG_DEBUG, "EAP-SIM: Receive start response");

 if (data->start_round == 0) {




  goto skip_id_update;
 }





 if (!attr->identity || attr->identity_len == 0) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Peer did not provide any "
      "identity");
  goto failed;
 }

 new_identity = os_malloc(attr->identity_len);
 if (new_identity == ((void*)0))
  goto failed;
 os_free(sm->identity);
 sm->identity = new_identity;
 os_memcpy(sm->identity, attr->identity, attr->identity_len);
 sm->identity_len = attr->identity_len;

 wpa_hexdump_ascii(MSG_DEBUG, "EAP-SIM: Identity",
     sm->identity, sm->identity_len);
 username = sim_get_username(sm->identity, sm->identity_len);
 if (username == ((void*)0))
  goto failed;

 if (username[0] == EAP_SIM_REAUTH_ID_PREFIX) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Reauth username '%s'",
      username);
  data->reauth = eap_sim_db_get_reauth_entry(
   sm->eap_sim_db_priv, username);
  os_free(username);
  if (data->reauth == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "EAP-SIM: Unknown reauth "
       "identity - request full auth identity");

   return;
  }
  wpa_printf(MSG_DEBUG, "EAP-SIM: Using fast re-authentication");
  os_strlcpy(data->permanent, data->reauth->permanent,
      sizeof(data->permanent));
  data->counter = data->reauth->counter;
  os_memcpy(data->mk, data->reauth->mk, EAP_SIM_MK_LEN);
  eap_sim_state(data, REAUTH);
  return;
 }

 if (username[0] == EAP_SIM_PSEUDONYM_PREFIX) {
  const char *permanent;
  wpa_printf(MSG_DEBUG, "EAP-SIM: Pseudonym username '%s'",
      username);
  permanent = eap_sim_db_get_permanent(
   sm->eap_sim_db_priv, username);
  os_free(username);
  if (permanent == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "EAP-SIM: Unknown pseudonym "
       "identity - request permanent identity");

   return;
  }
  os_strlcpy(data->permanent, permanent,
      sizeof(data->permanent));
 } else if (username[0] == EAP_SIM_PERMANENT_PREFIX) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Permanent username '%s'",
      username);
  os_strlcpy(data->permanent, username, sizeof(data->permanent));
  os_free(username);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Unrecognized username '%s'",
      username);
  os_free(username);
  goto failed;
 }

skip_id_update:


 if (attr->nonce_mt == ((void*)0) || attr->selected_version < 0) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Start/Response missing "
      "required attributes");
  goto failed;
 }

 if (!eap_sim_supported_ver(data, attr->selected_version)) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Peer selected unsupported "
      "version %d", attr->selected_version);
  goto failed;
 }

 data->counter = 0;
 data->reauth = ((void*)0);

 data->num_chal = eap_sim_db_get_gsm_triplets(
  sm->eap_sim_db_priv, data->permanent, EAP_SIM_MAX_CHAL,
  (u8 *) data->rand, (u8 *) data->kc, (u8 *) data->sres, sm);
 if (data->num_chal == EAP_SIM_DB_PENDING) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: GSM authentication triplets "
      "not yet available - pending request");
  sm->method_pending = METHOD_PENDING_WAIT;
  return;
 }
 if (data->num_chal < 2) {
  wpa_printf(MSG_INFO, "EAP-SIM: Failed to get GSM "
      "authentication triplets for the peer");
  goto failed;
 }

 if (data->permanent[0] == EAP_SIM_PERMANENT_PREFIX)
  os_strlcpy(sm->imsi, &data->permanent[1], sizeof(sm->imsi));

 identity_len = sm->identity_len;
 while (identity_len > 0 && sm->identity[identity_len - 1] == '\0') {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Workaround - drop last null "
      "character from identity");
  identity_len--;
 }
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-SIM: Identity for MK derivation",
     sm->identity, identity_len);

 os_memcpy(data->nonce_mt, attr->nonce_mt, EAP_SIM_NONCE_MT_LEN);
 WPA_PUT_BE16(ver_list, EAP_SIM_VERSION);
 eap_sim_derive_mk(sm->identity, identity_len, attr->nonce_mt,
     attr->selected_version, ver_list, sizeof(ver_list),
     data->num_chal, (const u8 *) data->kc, data->mk);
 eap_sim_derive_keys(data->mk, data->k_encr, data->k_aut, data->msk,
       data->emsk);

 eap_sim_state(data, CHALLENGE);
 return;

failed:
 data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
 eap_sim_state(data, NOTIFICATION);
}
