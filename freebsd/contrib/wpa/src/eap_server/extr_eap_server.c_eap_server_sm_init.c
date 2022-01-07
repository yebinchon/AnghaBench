
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_callbacks {int dummy; } ;
struct eap_sm {int MaxRetrans; int eap_fast_a_id_len; int tls_test_flags; int tls_flags; int tls_session_lifetime; int erp; int server_id_len; int server_id; int pbc_in_m1; int pwd_group; int fragment_size; void* peer_addr; void* assoc_p2p_ie; void* assoc_wps_ie; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; int eap_fast_a_id_info; void* eap_fast_a_id; void* pac_opaque_encr_key; int eap_server; int backend_auth; int eap_sim_db_priv; int msg_ctx; int ssl_ctx; struct eapol_callbacks const* eapol_cb; void* eapol_ctx; } ;
struct eap_config {int eap_fast_a_id_len; int tls_test_flags; int tls_flags; int tls_session_lifetime; int erp; int server_id_len; int server_id; int pbc_in_m1; int pwd_group; int fragment_size; int peer_addr; scalar_t__ assoc_p2p_ie; scalar_t__ assoc_wps_ie; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; scalar_t__ eap_fast_a_id_info; int eap_fast_a_id; int pac_opaque_encr_key; int eap_server; int backend_auth; int eap_sim_db_priv; int msg_ctx; int ssl_ctx; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 void* os_malloc (int) ;
 int os_memcpy (void*,int ,int) ;
 int os_strdup (scalar_t__) ;
 struct eap_sm* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 void* wpabuf_dup (scalar_t__) ;

struct eap_sm * eap_server_sm_init(void *eapol_ctx,
       const struct eapol_callbacks *eapol_cb,
       struct eap_config *conf)
{
 struct eap_sm *sm;

 sm = os_zalloc(sizeof(*sm));
 if (sm == ((void*)0))
  return ((void*)0);
 sm->eapol_ctx = eapol_ctx;
 sm->eapol_cb = eapol_cb;
 sm->MaxRetrans = 5;
 sm->ssl_ctx = conf->ssl_ctx;
 sm->msg_ctx = conf->msg_ctx;
 sm->eap_sim_db_priv = conf->eap_sim_db_priv;
 sm->backend_auth = conf->backend_auth;
 sm->eap_server = conf->eap_server;
 if (conf->pac_opaque_encr_key) {
  sm->pac_opaque_encr_key = os_malloc(16);
  if (sm->pac_opaque_encr_key) {
   os_memcpy(sm->pac_opaque_encr_key,
      conf->pac_opaque_encr_key, 16);
  }
 }
 if (conf->eap_fast_a_id) {
  sm->eap_fast_a_id = os_malloc(conf->eap_fast_a_id_len);
  if (sm->eap_fast_a_id) {
   os_memcpy(sm->eap_fast_a_id, conf->eap_fast_a_id,
      conf->eap_fast_a_id_len);
   sm->eap_fast_a_id_len = conf->eap_fast_a_id_len;
  }
 }
 if (conf->eap_fast_a_id_info)
  sm->eap_fast_a_id_info = os_strdup(conf->eap_fast_a_id_info);
 sm->eap_fast_prov = conf->eap_fast_prov;
 sm->pac_key_lifetime = conf->pac_key_lifetime;
 sm->pac_key_refresh_time = conf->pac_key_refresh_time;
 sm->eap_teap_auth = conf->eap_teap_auth;
 sm->eap_teap_pac_no_inner = conf->eap_teap_pac_no_inner;
 sm->eap_sim_aka_result_ind = conf->eap_sim_aka_result_ind;
 sm->eap_sim_id = conf->eap_sim_id;
 sm->tnc = conf->tnc;
 sm->wps = conf->wps;
 if (conf->assoc_wps_ie)
  sm->assoc_wps_ie = wpabuf_dup(conf->assoc_wps_ie);
 if (conf->assoc_p2p_ie)
  sm->assoc_p2p_ie = wpabuf_dup(conf->assoc_p2p_ie);
 if (conf->peer_addr)
  os_memcpy(sm->peer_addr, conf->peer_addr, ETH_ALEN);
 sm->fragment_size = conf->fragment_size;
 sm->pwd_group = conf->pwd_group;
 sm->pbc_in_m1 = conf->pbc_in_m1;
 sm->server_id = conf->server_id;
 sm->server_id_len = conf->server_id_len;
 sm->erp = conf->erp;
 sm->tls_session_lifetime = conf->tls_session_lifetime;
 sm->tls_flags = conf->tls_flags;





 wpa_printf(MSG_DEBUG, "EAP: Server state machine created");

 return sm;
}
