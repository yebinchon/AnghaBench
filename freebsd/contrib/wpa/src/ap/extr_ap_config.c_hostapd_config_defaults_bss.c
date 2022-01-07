
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_bss_config {unsigned int logger_syslog; unsigned int logger_stdout; int auth_algs; int wep_rekeying_period; int broadcast_key_idx_min; int broadcast_key_idx_max; int eap_reauth_period; int wpa_group_rekey; int wpa_gmk_rekey; int wpa_group_update_count; int wpa_pairwise_update_count; int dtim_period; int radius_server_auth_port; int eap_sim_db_timeout; int eap_sim_id; int max_listen_interval; int pwd_group; int assoc_sa_query_max_timeout; int assoc_sa_query_retry_timeout; int eap_fast_prov; int pac_key_lifetime; int pac_key_refresh_time; int wmm_enabled; int ft_over_ds; int rkh_pos_timeout; int rkh_neg_timeout; int rkh_pull_timeout; int rkh_pull_retries; int r0_key_lifetime; int radius_das_time_window; int sae_anti_clogging_threshold; int sae_sync; int gas_frag_limit; int fils_hlp_wait_time; int broadcast_deauth; int mbo_cell_data_conn_pref; int send_probe_response; int hs20_release; int macsec_port; int check_crl_strict; int mka_priority; int tls_flags; void* dhcp_relay_port; void* dhcp_server_port; int fils_realms; int group_mgmt_cipher; int eapol_version; int ap_max_inactivity; int max_num_sta; scalar_t__ rsn_pairwise; void* wpa_group; void* wpa_pairwise; int wpa_key_mgmt; int wpa_disable_eapol_key_retries; void* logger_stdout_level; void* logger_syslog_level; int anqp_elem; } ;


 int AP_MAX_INACTIVITY ;
 int DEFAULT_PRIO_NOT_KEY_SERVER ;
 int DEFAULT_WPA_DISABLE_EAPOL_KEY_RETRIES ;
 void* DHCP_SERVER_PORT ;
 int EAPOL_VERSION ;
 void* HOSTAPD_LEVEL_INFO ;
 int HS20_VERSION ;
 int MAX_STA_COUNT ;
 int TLS_CONN_DISABLE_TLSv1_3 ;
 int WPA_AUTH_ALG_OPEN ;
 int WPA_AUTH_ALG_SHARED ;
 int WPA_CIPHER_AES_128_CMAC ;
 void* WPA_CIPHER_TKIP ;
 int WPA_KEY_MGMT_PSK ;
 int dl_list_init (int *) ;

void hostapd_config_defaults_bss(struct hostapd_bss_config *bss)
{
 dl_list_init(&bss->anqp_elem);

 bss->logger_syslog_level = HOSTAPD_LEVEL_INFO;
 bss->logger_stdout_level = HOSTAPD_LEVEL_INFO;
 bss->logger_syslog = (unsigned int) -1;
 bss->logger_stdout = (unsigned int) -1;

 bss->auth_algs = WPA_AUTH_ALG_OPEN | WPA_AUTH_ALG_SHARED;

 bss->wep_rekeying_period = 300;

 bss->broadcast_key_idx_min = 1;
 bss->broadcast_key_idx_max = 2;
 bss->eap_reauth_period = 3600;

 bss->wpa_group_rekey = 600;
 bss->wpa_gmk_rekey = 86400;
 bss->wpa_group_update_count = 4;
 bss->wpa_pairwise_update_count = 4;
 bss->wpa_disable_eapol_key_retries =
  DEFAULT_WPA_DISABLE_EAPOL_KEY_RETRIES;
 bss->wpa_key_mgmt = WPA_KEY_MGMT_PSK;
 bss->wpa_pairwise = WPA_CIPHER_TKIP;
 bss->wpa_group = WPA_CIPHER_TKIP;
 bss->rsn_pairwise = 0;

 bss->max_num_sta = MAX_STA_COUNT;

 bss->dtim_period = 2;

 bss->radius_server_auth_port = 1812;
 bss->eap_sim_db_timeout = 1;
 bss->eap_sim_id = 3;
 bss->ap_max_inactivity = AP_MAX_INACTIVITY;
 bss->eapol_version = EAPOL_VERSION;

 bss->max_listen_interval = 65535;

 bss->pwd_group = 19;
 bss->wmm_enabled = -1;
 bss->radius_das_time_window = 300;

 bss->sae_anti_clogging_threshold = 5;
 bss->sae_sync = 5;

 bss->gas_frag_limit = 1400;
 bss->broadcast_deauth = 1;
 bss->tls_flags = TLS_CONN_DISABLE_TLSv1_3;

 bss->send_probe_response = 1;
 bss->check_crl_strict = 1;
}
