
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * wpa; } ;
struct wpa_sm_ctx {int channel_info; int fils_hlp_rx; int key_mgmt_set_pmk; int set_rekey_offload; int tdls_disable_channel_switch; int tdls_enable_channel_switch; int tdls_peer_addset; int tdls_oper; int send_tdls_mgmt; int tdls_get_capa; int mark_authenticated; int send_ft_action; int update_ft_ies; int mlme_setprotection; int get_config_blob; int set_config_blob; int remove_pmkid; int add_pmkid; int cancel_auth_timeout; int alloc_eapol; int get_beacon_ie; int ether_send; int get_bssid; int get_network_ctx; int set_key; int deauthenticate; int get_state; int set_state; struct wpa_supplicant* msg_ctx; struct wpa_supplicant* ctx; } ;


 int MSG_ERROR ;
 int _wpa_alloc_eapol ;
 int _wpa_ether_send ;
 int _wpa_supplicant_cancel_auth_timeout ;
 int _wpa_supplicant_deauthenticate ;
 int _wpa_supplicant_get_state ;
 int _wpa_supplicant_set_state ;
 int os_free (struct wpa_sm_ctx*) ;
 struct wpa_sm_ctx* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 int * wpa_sm_init (struct wpa_sm_ctx*) ;
 int wpa_supplicant_add_pmkid ;
 int wpa_supplicant_channel_info ;
 int wpa_supplicant_fils_hlp_rx ;
 int wpa_supplicant_get_beacon_ie ;
 int wpa_supplicant_get_bssid ;
 int wpa_supplicant_get_config_blob ;
 int wpa_supplicant_get_network_ctx ;
 int wpa_supplicant_key_mgmt_set_pmk ;
 int wpa_supplicant_mark_authenticated ;
 int wpa_supplicant_mlme_setprotection ;
 int wpa_supplicant_remove_pmkid ;
 int wpa_supplicant_send_ft_action ;
 int wpa_supplicant_send_tdls_mgmt ;
 int wpa_supplicant_set_config_blob ;
 int wpa_supplicant_set_key ;
 int wpa_supplicant_set_rekey_offload ;
 int wpa_supplicant_tdls_disable_channel_switch ;
 int wpa_supplicant_tdls_enable_channel_switch ;
 int wpa_supplicant_tdls_get_capa ;
 int wpa_supplicant_tdls_oper ;
 int wpa_supplicant_tdls_peer_addset ;
 int wpa_supplicant_update_ft_ies ;

int wpa_supplicant_init_wpa(struct wpa_supplicant *wpa_s)
{

 struct wpa_sm_ctx *ctx;
 ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Failed to allocate WPA context.");
  return -1;
 }

 ctx->ctx = wpa_s;
 ctx->msg_ctx = wpa_s;
 ctx->set_state = _wpa_supplicant_set_state;
 ctx->get_state = _wpa_supplicant_get_state;
 ctx->deauthenticate = _wpa_supplicant_deauthenticate;
 ctx->set_key = wpa_supplicant_set_key;
 ctx->get_network_ctx = wpa_supplicant_get_network_ctx;
 ctx->get_bssid = wpa_supplicant_get_bssid;
 ctx->ether_send = _wpa_ether_send;
 ctx->get_beacon_ie = wpa_supplicant_get_beacon_ie;
 ctx->alloc_eapol = _wpa_alloc_eapol;
 ctx->cancel_auth_timeout = _wpa_supplicant_cancel_auth_timeout;
 ctx->add_pmkid = wpa_supplicant_add_pmkid;
 ctx->remove_pmkid = wpa_supplicant_remove_pmkid;

 ctx->set_config_blob = wpa_supplicant_set_config_blob;
 ctx->get_config_blob = wpa_supplicant_get_config_blob;

 ctx->mlme_setprotection = wpa_supplicant_mlme_setprotection;
 ctx->set_rekey_offload = wpa_supplicant_set_rekey_offload;
 ctx->key_mgmt_set_pmk = wpa_supplicant_key_mgmt_set_pmk;
 ctx->fils_hlp_rx = wpa_supplicant_fils_hlp_rx;
 ctx->channel_info = wpa_supplicant_channel_info;

 wpa_s->wpa = wpa_sm_init(ctx);
 if (wpa_s->wpa == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Failed to initialize WPA state "
      "machine");
  os_free(ctx);
  return -1;
 }


 return 0;
}
