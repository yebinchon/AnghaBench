
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int wpa; scalar_t__ current_bss; int key_mgmt; TYPE_1__* conf; int p2p_disable_ip_addr_req; } ;
struct wpa_ssid {scalar_t__ proactive_key_caching; scalar_t__ p2p_group; int wpa_ptk_rekey; int ssid_len; int ssid; int eap; int eap_workaround; int pairwise_cipher; } ;
struct rsn_supp_config {scalar_t__ proactive_key_caching; int p2p; int fils_cache_id; int wpa_rsc_relaxation; int wpa_ptk_rekey; int ssid_len; int ssid; int * eap_conf_ctx; int eap_workaround; int allowed_pairwise_cipher; struct wpa_ssid* network_ctx; } ;
typedef int conf ;
struct TYPE_2__ {scalar_t__ okc; int wpa_rsc_relaxation; } ;


 int P2P_GROUP_CAPAB_IP_ADDR_ALLOCATION ;
 int P2P_IE_VENDOR_TYPE ;
 int os_memset (struct rsn_supp_config*,int ,int) ;
 int p2p_get_group_capab (struct wpabuf*) ;
 int wpa_bss_get_fils_cache_id (scalar_t__) ;
 struct wpabuf* wpa_bss_get_vendor_ie_multi (scalar_t__,int ) ;
 scalar_t__ wpa_key_mgmt_fils (int ) ;
 int wpa_sm_set_config (int ,struct rsn_supp_config*) ;
 int wpabuf_free (struct wpabuf*) ;

void wpa_supplicant_rsn_supp_set_config(struct wpa_supplicant *wpa_s,
     struct wpa_ssid *ssid)
{
 struct rsn_supp_config conf;
 if (ssid) {
  os_memset(&conf, 0, sizeof(conf));
  conf.network_ctx = ssid;
  conf.allowed_pairwise_cipher = ssid->pairwise_cipher;






  conf.ssid = ssid->ssid;
  conf.ssid_len = ssid->ssid_len;
  conf.wpa_ptk_rekey = ssid->wpa_ptk_rekey;
  conf.wpa_rsc_relaxation = wpa_s->conf->wpa_rsc_relaxation;





 }
 wpa_sm_set_config(wpa_s->wpa, ssid ? &conf : ((void*)0));
}
