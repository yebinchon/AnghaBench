
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_auth_config {int eapol_version; int disable_pmksa_caching; int ieee80211w; scalar_t__ ssid_len; int r0_key_holder_len; int disable_gtk; int own_ie_override_len; int fils_cache_id; int fils_cache_id_set; int ip_addr_end; int ip_addr_start; int ip_addr_mask; int ip_addr_go; int own_ie_override; int corrupt_gtk_rekey_mic_probability; scalar_t__ rsn_preauth; void* rsn_pairwise; void* wpa_group; scalar_t__ wpa_pairwise; int wpa_key_mgmt; int wpa; int ft_psk_generate_local; int ft_over_ds; int pmk_r1_push; int * r1kh_list; int * r0kh_list; int rkh_pull_retries; int rkh_pull_timeout; int rkh_neg_timeout; int rkh_pos_timeout; int reassociation_deadline; int r1_max_key_lifetime; int r0_key_lifetime; int r1_key_holder; int r0_key_holder; int mobility_domain; int ssid; int sae_require_mfp; int group_mgmt_cipher; int okc; int ocv; int wmm_uapsd; int wmm_enabled; int wpa_pairwise_update_count; int wpa_disable_eapol_key_retries; int wpa_group_update_count; int wpa_ptk_rekey; int wpa_gmk_rekey; int wpa_strict_rekey; int wpa_group_rekey; } ;
struct hostapd_config {int corrupt_gtk_rekey_mic_probability; } ;
struct TYPE_2__ {scalar_t__ ssid_len; scalar_t__ ssid; } ;
struct hostapd_bss_config {int eapol_version; int disable_pmksa_caching; int ieee80211w; int disable_dgaf; scalar_t__ fils_cache_id; int fils_cache_id_set; scalar_t__ ip_addr_end; scalar_t__ ip_addr_start; scalar_t__ ip_addr_mask; scalar_t__ ip_addr_go; scalar_t__ own_ie_override; scalar_t__ osen; int ft_psk_generate_local; int ft_over_ds; int pmk_r1_push; int r1kh_list; int r0kh_list; int rkh_pull_retries; int rkh_pull_timeout; int rkh_neg_timeout; int rkh_pos_timeout; int reassociation_deadline; int r1_max_key_lifetime; int r0_key_lifetime; scalar_t__ r1_key_holder; scalar_t__ nas_identifier; scalar_t__ mobility_domain; TYPE_1__ ssid; int sae_require_mfp; int group_mgmt_cipher; int okc; int ocv; int wmm_uapsd; int wmm_enabled; scalar_t__ rsn_preauth; void* rsn_pairwise; int wpa_pairwise_update_count; int wpa_disable_eapol_key_retries; int wpa_group_update_count; int wpa_ptk_rekey; int wpa_gmk_rekey; int wpa_strict_rekey; int wpa_group_rekey; void* wpa_group; scalar_t__ wpa_pairwise; int wpa_key_mgmt; int wpa; } ;


 int FILS_CACHE_ID_LEN ;
 scalar_t__ FT_R0KH_ID_MAX_LEN ;
 int FT_R1KH_ID_LEN ;
 scalar_t__ MAX_OWN_IE_OVERRIDE ;
 int MOBILITY_DOMAIN_ID_LEN ;
 scalar_t__ SSID_MAX_LEN ;
 void* WPA_CIPHER_CCMP ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_PROTO_OSEN ;
 int os_memcpy (int ,scalar_t__,int) ;
 int os_memset (struct wpa_auth_config*,int ,int) ;
 scalar_t__ os_strlen (scalar_t__) ;
 scalar_t__ wpabuf_head (scalar_t__) ;
 scalar_t__ wpabuf_len (scalar_t__) ;

__attribute__((used)) static void hostapd_wpa_auth_conf(struct hostapd_bss_config *conf,
      struct hostapd_config *iconf,
      struct wpa_auth_config *wconf)
{
 os_memset(wconf, 0, sizeof(*wconf));
 wconf->wpa = conf->wpa;
 wconf->wpa_key_mgmt = conf->wpa_key_mgmt;
 wconf->wpa_pairwise = conf->wpa_pairwise;
 wconf->wpa_group = conf->wpa_group;
 wconf->wpa_group_rekey = conf->wpa_group_rekey;
 wconf->wpa_strict_rekey = conf->wpa_strict_rekey;
 wconf->wpa_gmk_rekey = conf->wpa_gmk_rekey;
 wconf->wpa_ptk_rekey = conf->wpa_ptk_rekey;
 wconf->wpa_group_update_count = conf->wpa_group_update_count;
 wconf->wpa_disable_eapol_key_retries =
  conf->wpa_disable_eapol_key_retries;
 wconf->wpa_pairwise_update_count = conf->wpa_pairwise_update_count;
 wconf->rsn_pairwise = conf->rsn_pairwise;
 wconf->rsn_preauth = conf->rsn_preauth;
 wconf->eapol_version = conf->eapol_version;




 wconf->wmm_enabled = conf->wmm_enabled;
 wconf->wmm_uapsd = conf->wmm_uapsd;
 wconf->disable_pmksa_caching = conf->disable_pmksa_caching;



 wconf->okc = conf->okc;
}
