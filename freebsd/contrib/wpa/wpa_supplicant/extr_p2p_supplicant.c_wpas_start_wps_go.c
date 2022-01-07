
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {int reassociate; scalar_t__ disconnected; struct wpa_ssid* connect_without_scan; int scan_req; int go_params; int ap_configured_cb_data; struct wpa_supplicant* ap_configured_cb_ctx; int ap_configured_cb; TYPE_2__* p2pdev; int conf; int go_dev_addr; scalar_t__ group_formation_reported; scalar_t__ p2p_go_group_formation_completed; scalar_t__ show_group_started; } ;
struct wpa_ssid {int temporary; int p2p_group; int p2p_persistent_group; int frequency; int ssid_len; int pbss; int ap_max_inactivity; int * passphrase; scalar_t__ psk; scalar_t__ psk_set; int id; void* group_cipher; void* pairwise_cipher; int proto; int key_mgmt; int auth_alg; scalar_t__ ssid; int he; int vht_center_freq2; int max_oper_chwidth; int vht; int ht40; int mode; } ;
struct p2p_go_neg_results {int freq; int ssid_len; int psk; scalar_t__ psk_set; int passphrase; int ssid; int he; int vht_center_freq2; int max_oper_chwidth; int vht; int ht40; int persistent_group; } ;
struct TYPE_4__ {TYPE_1__* conf; } ;
struct TYPE_3__ {int p2p_go_max_inactivity; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int NORMAL_SCAN_REQ ;
 int WPAS_MODE_P2P_GO ;
 int WPAS_MODE_P2P_GROUP_FORMATION ;
 int WPA_AUTH_ALG_OPEN ;
 void* WPA_CIPHER_CCMP ;
 void* WPA_CIPHER_GCMP ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_PROTO_RSN ;
 int os_memcpy (scalar_t__,int ,int) ;
 int os_memset (int ,int ,int ) ;
 int * os_strdup (int ) ;
 scalar_t__ os_strlen (int ) ;
 scalar_t__ os_zalloc (int ) ;
 int p2p_go_configured ;
 struct wpa_ssid* wpa_config_add_network (int ) ;
 int wpa_config_remove_network (int ,int ) ;
 int wpa_config_set_network_defaults (struct wpa_ssid*) ;
 int wpa_config_update_psk (struct wpa_ssid*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_msg_global (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;
 scalar_t__ wpas_copy_go_neg_results (struct wpa_supplicant*,struct p2p_go_neg_results*) ;

__attribute__((used)) static void wpas_start_wps_go(struct wpa_supplicant *wpa_s,
         struct p2p_go_neg_results *params,
         int group_formation)
{
 struct wpa_ssid *ssid;

 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Starting GO");
 if (wpas_copy_go_neg_results(wpa_s, params) < 0) {
  wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Could not copy GO Negotiation "
   "results");
  return;
 }

 ssid = wpa_config_add_network(wpa_s->conf);
 if (ssid == ((void*)0)) {
  wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Could not add network for GO");
  return;
 }

 wpa_s->show_group_started = 0;
 wpa_s->p2p_go_group_formation_completed = 0;
 wpa_s->group_formation_reported = 0;
 os_memset(wpa_s->go_dev_addr, 0, ETH_ALEN);

 wpa_config_set_network_defaults(ssid);
 ssid->temporary = 1;
 ssid->p2p_group = 1;
 ssid->p2p_persistent_group = !!params->persistent_group;
 ssid->mode = group_formation ? WPAS_MODE_P2P_GROUP_FORMATION :
  WPAS_MODE_P2P_GO;
 ssid->frequency = params->freq;
 ssid->ht40 = params->ht40;
 ssid->vht = params->vht;
 ssid->max_oper_chwidth = params->max_oper_chwidth;
 ssid->vht_center_freq2 = params->vht_center_freq2;
 ssid->he = params->he;
 ssid->ssid = os_zalloc(params->ssid_len + 1);
 if (ssid->ssid) {
  os_memcpy(ssid->ssid, params->ssid, params->ssid_len);
  ssid->ssid_len = params->ssid_len;
 }
 ssid->auth_alg = WPA_AUTH_ALG_OPEN;
 ssid->key_mgmt = WPA_KEY_MGMT_PSK;
 ssid->proto = WPA_PROTO_RSN;
 ssid->pairwise_cipher = WPA_CIPHER_CCMP;
 ssid->group_cipher = WPA_CIPHER_CCMP;
 if (params->freq > 56160) {




  ssid->pairwise_cipher = WPA_CIPHER_GCMP;
  ssid->group_cipher = WPA_CIPHER_GCMP;

  ssid->pbss = 1;
 }
 if (os_strlen(params->passphrase) > 0) {
  ssid->passphrase = os_strdup(params->passphrase);
  if (ssid->passphrase == ((void*)0)) {
   wpa_msg_global(wpa_s, MSG_ERROR,
           "P2P: Failed to copy passphrase for GO");
   wpa_config_remove_network(wpa_s->conf, ssid->id);
   return;
  }
 } else
  ssid->passphrase = ((void*)0);
 ssid->psk_set = params->psk_set;
 if (ssid->psk_set)
  os_memcpy(ssid->psk, params->psk, sizeof(ssid->psk));
 else if (ssid->passphrase)
  wpa_config_update_psk(ssid);
 ssid->ap_max_inactivity = wpa_s->p2pdev->conf->p2p_go_max_inactivity;

 wpa_s->ap_configured_cb = p2p_go_configured;
 wpa_s->ap_configured_cb_ctx = wpa_s;
 wpa_s->ap_configured_cb_data = wpa_s->go_params;
 wpa_s->scan_req = NORMAL_SCAN_REQ;
 wpa_s->connect_without_scan = ssid;
 wpa_s->reassociate = 1;
 wpa_s->disconnected = 0;
 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Request scan (that will be skipped) to "
  "start GO)");
 wpa_supplicant_req_scan(wpa_s, 0, 0);
}
