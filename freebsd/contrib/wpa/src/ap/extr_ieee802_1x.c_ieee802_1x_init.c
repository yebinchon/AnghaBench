
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_2__* eapol_auth; TYPE_1__* conf; int radius; int wps; int eap_sim_db_priv; int msg_ctx; int ssl_ctx; int erp_keys; } ;
struct eapol_auth_config {int server_id_len; int erp_add_key; int erp_get_key; int eapol_event; int tx_key; int abort_auth; int set_port_authorized; int logger; int sta_entry_alive; int get_eap_user; int finished; int aaa_send; int eapol_send; int const* server_id; int pbc_in_m1; int pwd_group; int fragment_size; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; int eap_fast_a_id_info; int eap_fast_a_id_len; int eap_fast_a_id; int pac_opaque_encr_key; int tls_flags; int tls_session_lifetime; int erp; int erp_domain; int erp_send_reauth_start; int eap_req_id_text_len; int eap_req_id_text; int eap_sim_db_priv; int msg_ctx; int ssl_ctx; int eap_server; int individual_wep_key_len; scalar_t__ wpa; int eap_reauth_period; struct hostapd_data* ctx; } ;
struct eapol_auth_cb {int server_id_len; int erp_add_key; int erp_get_key; int eapol_event; int tx_key; int abort_auth; int set_port_authorized; int logger; int sta_entry_alive; int get_eap_user; int finished; int aaa_send; int eapol_send; int const* server_id; int pbc_in_m1; int pwd_group; int fragment_size; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; int eap_fast_a_id_info; int eap_fast_a_id_len; int eap_fast_a_id; int pac_opaque_encr_key; int tls_flags; int tls_session_lifetime; int erp; int erp_domain; int erp_send_reauth_start; int eap_req_id_text_len; int eap_req_id_text; int eap_sim_db_priv; int msg_ctx; int ssl_ctx; int eap_server; int individual_wep_key_len; scalar_t__ wpa; int eap_reauth_period; struct hostapd_data* ctx; } ;
typedef int conf ;
typedef int cb ;
struct TYPE_4__ {int * default_wep_key; } ;
struct TYPE_3__ {int iface; scalar_t__ default_wep_key_len; scalar_t__ wpa; scalar_t__ ieee802_1x; scalar_t__ server_id; int pbc_in_m1; int pwd_group; int fragment_size; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; int eap_fast_a_id_info; int eap_fast_a_id_len; int eap_fast_a_id; int pac_opaque_encr_key; int tls_flags; int tls_session_lifetime; int eap_server_erp; int erp_domain; int erp_send_reauth_start; int eap_req_id_text_len; int eap_req_id_text; int eap_server; int individual_wep_key_len; int eap_reauth_period; } ;


 int RADIUS_AUTH ;
 int WPA_ALG_NONE ;
 int _ieee802_1x_abort_auth ;
 int _ieee802_1x_finished ;
 int _ieee802_1x_tx_key ;
 int dl_list_init (int *) ;
 TYPE_2__* eapol_auth_init (struct eapol_auth_config*,struct eapol_auth_config*) ;
 int hostapd_drv_set_key (int ,struct hostapd_data*,int ,int *,int,int ,int *,int ,int *,int ) ;
 scalar_t__ hostapd_set_drv_ieee8021x (struct hostapd_data*,int ,int) ;
 int ieee802_1x_aaa_send ;
 int ieee802_1x_eapol_event ;
 int ieee802_1x_eapol_send ;
 int ieee802_1x_erp_add_key ;
 int ieee802_1x_erp_get_key ;
 int ieee802_1x_get_eap_user ;
 int ieee802_1x_logger ;
 int ieee802_1x_receive_auth ;
 int ieee802_1x_rekey (struct hostapd_data*,int *) ;
 int ieee802_1x_set_port_authorized ;
 int ieee802_1x_sta_entry_alive ;
 int os_memset (struct eapol_auth_config*,int ,int) ;
 int os_strlen (scalar_t__) ;
 scalar_t__ radius_client_register (int ,int ,int ,struct hostapd_data*) ;

int ieee802_1x_init(struct hostapd_data *hapd)
{
 int i;
 struct eapol_auth_config conf;
 struct eapol_auth_cb cb;

 dl_list_init(&hapd->erp_keys);

 os_memset(&conf, 0, sizeof(conf));
 conf.ctx = hapd;
 conf.eap_reauth_period = hapd->conf->eap_reauth_period;
 conf.wpa = hapd->conf->wpa;
 conf.individual_wep_key_len = hapd->conf->individual_wep_key_len;
 conf.eap_server = hapd->conf->eap_server;
 conf.ssl_ctx = hapd->ssl_ctx;
 conf.msg_ctx = hapd->msg_ctx;
 conf.eap_sim_db_priv = hapd->eap_sim_db_priv;
 conf.eap_req_id_text = hapd->conf->eap_req_id_text;
 conf.eap_req_id_text_len = hapd->conf->eap_req_id_text_len;
 conf.erp_send_reauth_start = hapd->conf->erp_send_reauth_start;
 conf.erp_domain = hapd->conf->erp_domain;
 conf.erp = hapd->conf->eap_server_erp;
 conf.tls_session_lifetime = hapd->conf->tls_session_lifetime;
 conf.tls_flags = hapd->conf->tls_flags;
 conf.pac_opaque_encr_key = hapd->conf->pac_opaque_encr_key;
 conf.eap_fast_a_id = hapd->conf->eap_fast_a_id;
 conf.eap_fast_a_id_len = hapd->conf->eap_fast_a_id_len;
 conf.eap_fast_a_id_info = hapd->conf->eap_fast_a_id_info;
 conf.eap_fast_prov = hapd->conf->eap_fast_prov;
 conf.pac_key_lifetime = hapd->conf->pac_key_lifetime;
 conf.pac_key_refresh_time = hapd->conf->pac_key_refresh_time;
 conf.eap_teap_auth = hapd->conf->eap_teap_auth;
 conf.eap_teap_pac_no_inner = hapd->conf->eap_teap_pac_no_inner;
 conf.eap_sim_aka_result_ind = hapd->conf->eap_sim_aka_result_ind;
 conf.eap_sim_id = hapd->conf->eap_sim_id;
 conf.tnc = hapd->conf->tnc;
 conf.wps = hapd->wps;
 conf.fragment_size = hapd->conf->fragment_size;
 conf.pwd_group = hapd->conf->pwd_group;
 conf.pbc_in_m1 = hapd->conf->pbc_in_m1;
 if (hapd->conf->server_id) {
  conf.server_id = (const u8 *) hapd->conf->server_id;
  conf.server_id_len = os_strlen(hapd->conf->server_id);
 } else {
  conf.server_id = (const u8 *) "hostapd";
  conf.server_id_len = 7;
 }

 os_memset(&cb, 0, sizeof(cb));
 cb.eapol_send = ieee802_1x_eapol_send;
 cb.aaa_send = ieee802_1x_aaa_send;
 cb.finished = _ieee802_1x_finished;
 cb.get_eap_user = ieee802_1x_get_eap_user;
 cb.sta_entry_alive = ieee802_1x_sta_entry_alive;
 cb.logger = ieee802_1x_logger;
 cb.set_port_authorized = ieee802_1x_set_port_authorized;
 cb.abort_auth = _ieee802_1x_abort_auth;
 cb.tx_key = _ieee802_1x_tx_key;
 cb.eapol_event = ieee802_1x_eapol_event;





 hapd->eapol_auth = eapol_auth_init(&conf, &cb);
 if (hapd->eapol_auth == ((void*)0))
  return -1;

 if ((hapd->conf->ieee802_1x || hapd->conf->wpa) &&
     hostapd_set_drv_ieee8021x(hapd, hapd->conf->iface, 1))
  return -1;


 if (radius_client_register(hapd->radius, RADIUS_AUTH,
       ieee802_1x_receive_auth, hapd))
  return -1;


 if (hapd->conf->default_wep_key_len) {
  for (i = 0; i < 4; i++)
   hostapd_drv_set_key(hapd->conf->iface, hapd,
         WPA_ALG_NONE, ((void*)0), i, 0, ((void*)0), 0,
         ((void*)0), 0);

  ieee802_1x_rekey(hapd, ((void*)0));

  if (hapd->eapol_auth->default_wep_key == ((void*)0))
   return -1;
 }

 return 0;
}
