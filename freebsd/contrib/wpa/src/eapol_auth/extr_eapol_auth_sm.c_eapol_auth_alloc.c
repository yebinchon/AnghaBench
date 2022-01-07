
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eapol_state_machine {int radius_identifier; int flags; scalar_t__ reAuthPeriod; int acct_multi_session_id; int radius_cui; int identity_len; int * identity; int * eap; int eap_if; void* portValid; void* keyTxEnabled; int portControl; int ctrl_dir_state; int key_rx_state; int auth_key_tx_state; void* reAuthEnabled; int reauth_timer_state; int serverTimeout; int be_auth_state; int reAuthMax; int quietPeriod; int auth_pae_state; void* sta; struct eapol_authenticator* eapol; int addr; } ;
struct TYPE_2__ {scalar_t__ eap_reauth_period; scalar_t__ individual_wep_key_len; int tls_flags; int tls_session_lifetime; int erp; int server_id_len; int server_id; int pbc_in_m1; int pwd_group; int fragment_size; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; int eap_fast_a_id_info; int eap_fast_a_id_len; int eap_fast_a_id; int pac_opaque_encr_key; int eap_sim_db_priv; int msg_ctx; int ssl_ctx; int eap_server; scalar_t__ wpa; } ;
struct eapol_authenticator {TYPE_1__ conf; scalar_t__ default_wep_key; } ;
struct eap_config {int tls_flags; int tls_session_lifetime; int erp; int server_id_len; int server_id; int pbc_in_m1; int pwd_group; int fragment_size; int const* peer_addr; struct wpabuf const* assoc_p2p_ie; struct wpabuf const* assoc_wps_ie; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; int eap_fast_a_id_info; int eap_fast_a_id_len; int eap_fast_a_id; int pac_opaque_encr_key; int eap_sim_db_priv; int msg_ctx; int ssl_ctx; int eap_server; } ;
typedef int eap_conf ;


 int AUTH_KEY_TX_NO_KEY_TRANSMIT ;
 int AUTH_PAE_DEFAULT_quietPeriod ;
 int AUTH_PAE_DEFAULT_reAuthMax ;
 int AUTH_PAE_INITIALIZE ;
 int Auto ;
 int BE_AUTH_DEFAULT_serverTimeout ;
 int BE_AUTH_INITIALIZE ;
 int CTRL_DIR_IN_OR_BOTH ;
 int ETH_ALEN ;
 void* FALSE ;
 int KEY_RX_NO_KEY_RECEIVE ;
 int MSG_DEBUG ;
 int REAUTH_TIMER_INITIALIZE ;
 void* TRUE ;
 int eap_get_interface (int *) ;
 int * eap_server_sm_init (struct eapol_state_machine*,int *,struct eap_config*) ;
 int eapol_auth_free (struct eapol_state_machine*) ;
 int eapol_auth_initialize (struct eapol_state_machine*) ;
 int eapol_cb ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (struct eap_config*,int ,int) ;
 scalar_t__ os_strdup (char const*) ;
 int os_strlen (char const*) ;
 struct eapol_state_machine* os_zalloc (int) ;
 scalar_t__ radius_gen_session_id (int *,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_alloc_copy (char const*,int ) ;

struct eapol_state_machine *
eapol_auth_alloc(struct eapol_authenticator *eapol, const u8 *addr,
   int flags, const struct wpabuf *assoc_wps_ie,
   const struct wpabuf *assoc_p2p_ie, void *sta_ctx,
   const char *identity, const char *radius_cui)
{
 struct eapol_state_machine *sm;
 struct eap_config eap_conf;

 if (eapol == ((void*)0))
  return ((void*)0);

 sm = os_zalloc(sizeof(*sm));
 if (sm == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "IEEE 802.1X state machine allocation "
      "failed");
  return ((void*)0);
 }
 sm->radius_identifier = -1;
 os_memcpy(sm->addr, addr, ETH_ALEN);
 sm->flags = flags;

 sm->eapol = eapol;
 sm->sta = sta_ctx;


 sm->auth_pae_state = AUTH_PAE_INITIALIZE;
 sm->quietPeriod = AUTH_PAE_DEFAULT_quietPeriod;
 sm->reAuthMax = AUTH_PAE_DEFAULT_reAuthMax;

 sm->be_auth_state = BE_AUTH_INITIALIZE;
 sm->serverTimeout = BE_AUTH_DEFAULT_serverTimeout;

 sm->reauth_timer_state = REAUTH_TIMER_INITIALIZE;
 sm->reAuthPeriod = eapol->conf.eap_reauth_period;
 sm->reAuthEnabled = eapol->conf.eap_reauth_period > 0 ? TRUE : FALSE;

 sm->auth_key_tx_state = AUTH_KEY_TX_NO_KEY_TRANSMIT;

 sm->key_rx_state = KEY_RX_NO_KEY_RECEIVE;

 sm->ctrl_dir_state = CTRL_DIR_IN_OR_BOTH;

 sm->portControl = Auto;

 if (!eapol->conf.wpa &&
     (eapol->default_wep_key || eapol->conf.individual_wep_key_len > 0))
  sm->keyTxEnabled = TRUE;
 else
  sm->keyTxEnabled = FALSE;
 if (eapol->conf.wpa)
  sm->portValid = FALSE;
 else
  sm->portValid = TRUE;

 os_memset(&eap_conf, 0, sizeof(eap_conf));
 eap_conf.eap_server = eapol->conf.eap_server;
 eap_conf.ssl_ctx = eapol->conf.ssl_ctx;
 eap_conf.msg_ctx = eapol->conf.msg_ctx;
 eap_conf.eap_sim_db_priv = eapol->conf.eap_sim_db_priv;
 eap_conf.pac_opaque_encr_key = eapol->conf.pac_opaque_encr_key;
 eap_conf.eap_fast_a_id = eapol->conf.eap_fast_a_id;
 eap_conf.eap_fast_a_id_len = eapol->conf.eap_fast_a_id_len;
 eap_conf.eap_fast_a_id_info = eapol->conf.eap_fast_a_id_info;
 eap_conf.eap_fast_prov = eapol->conf.eap_fast_prov;
 eap_conf.pac_key_lifetime = eapol->conf.pac_key_lifetime;
 eap_conf.pac_key_refresh_time = eapol->conf.pac_key_refresh_time;
 eap_conf.eap_teap_auth = eapol->conf.eap_teap_auth;
 eap_conf.eap_teap_pac_no_inner = eapol->conf.eap_teap_pac_no_inner;
 eap_conf.eap_sim_aka_result_ind = eapol->conf.eap_sim_aka_result_ind;
 eap_conf.eap_sim_id = eapol->conf.eap_sim_id;
 eap_conf.tnc = eapol->conf.tnc;
 eap_conf.wps = eapol->conf.wps;
 eap_conf.assoc_wps_ie = assoc_wps_ie;
 eap_conf.assoc_p2p_ie = assoc_p2p_ie;
 eap_conf.peer_addr = addr;
 eap_conf.fragment_size = eapol->conf.fragment_size;
 eap_conf.pwd_group = eapol->conf.pwd_group;
 eap_conf.pbc_in_m1 = eapol->conf.pbc_in_m1;
 eap_conf.server_id = eapol->conf.server_id;
 eap_conf.server_id_len = eapol->conf.server_id_len;
 eap_conf.erp = eapol->conf.erp;
 eap_conf.tls_session_lifetime = eapol->conf.tls_session_lifetime;
 eap_conf.tls_flags = eapol->conf.tls_flags;
 sm->eap = eap_server_sm_init(sm, &eapol_cb, &eap_conf);
 if (sm->eap == ((void*)0)) {
  eapol_auth_free(sm);
  return ((void*)0);
 }
 sm->eap_if = eap_get_interface(sm->eap);

 eapol_auth_initialize(sm);

 if (identity) {
  sm->identity = (u8 *) os_strdup(identity);
  if (sm->identity)
   sm->identity_len = os_strlen(identity);
 }
 if (radius_cui)
  sm->radius_cui = wpabuf_alloc_copy(radius_cui,
         os_strlen(radius_cui));


 if (radius_gen_session_id((u8 *) &sm->acct_multi_session_id,
      sizeof(sm->acct_multi_session_id)) < 0) {
  eapol_auth_free(sm);
  return ((void*)0);
 }


 return sm;
}
