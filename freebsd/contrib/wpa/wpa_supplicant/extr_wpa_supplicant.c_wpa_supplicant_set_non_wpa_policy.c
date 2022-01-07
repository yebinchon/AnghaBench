
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int key_mgmt; int pairwise_cipher; int group_cipher; int mgmt_group_cipher; int wpa; } ;
struct wpa_ssid {int key_mgmt; int* wep_key_len; } ;


 int NUM_WEP_KEYS ;
 void* WPA_CIPHER_NONE ;
 void* WPA_CIPHER_WEP104 ;
 void* WPA_CIPHER_WEP40 ;
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 int WPA_KEY_MGMT_NONE ;
 int WPA_KEY_MGMT_WPS ;
 int WPA_PARAM_GROUP ;
 int WPA_PARAM_KEY_MGMT ;
 int WPA_PARAM_MGMT_GROUP ;
 int WPA_PARAM_PAIRWISE ;
 int WPA_PARAM_RSN_ENABLED ;
 int pmksa_cache_clear_current (int ) ;
 int wpa_sm_set_ap_rsn_ie (int ,int *,int ) ;
 int wpa_sm_set_ap_wpa_ie (int ,int *,int ) ;
 int wpa_sm_set_assoc_wpa_ie (int ,int *,int ) ;
 int wpa_sm_set_param (int ,int ,int) ;

void wpa_supplicant_set_non_wpa_policy(struct wpa_supplicant *wpa_s,
           struct wpa_ssid *ssid)
{
 int i;

 if (ssid->key_mgmt & WPA_KEY_MGMT_WPS)
  wpa_s->key_mgmt = WPA_KEY_MGMT_WPS;
 else if (ssid->key_mgmt & WPA_KEY_MGMT_IEEE8021X_NO_WPA)
  wpa_s->key_mgmt = WPA_KEY_MGMT_IEEE8021X_NO_WPA;
 else
  wpa_s->key_mgmt = WPA_KEY_MGMT_NONE;
 wpa_sm_set_ap_wpa_ie(wpa_s->wpa, ((void*)0), 0);
 wpa_sm_set_ap_rsn_ie(wpa_s->wpa, ((void*)0), 0);
 wpa_sm_set_assoc_wpa_ie(wpa_s->wpa, ((void*)0), 0);
 wpa_s->pairwise_cipher = WPA_CIPHER_NONE;
 wpa_s->group_cipher = WPA_CIPHER_NONE;
 wpa_s->mgmt_group_cipher = 0;

 for (i = 0; i < NUM_WEP_KEYS; i++) {
  if (ssid->wep_key_len[i] > 5) {
   wpa_s->pairwise_cipher = WPA_CIPHER_WEP104;
   wpa_s->group_cipher = WPA_CIPHER_WEP104;
   break;
  } else if (ssid->wep_key_len[i] > 0) {
   wpa_s->pairwise_cipher = WPA_CIPHER_WEP40;
   wpa_s->group_cipher = WPA_CIPHER_WEP40;
   break;
  }
 }

 wpa_sm_set_param(wpa_s->wpa, WPA_PARAM_RSN_ENABLED, 0);
 wpa_sm_set_param(wpa_s->wpa, WPA_PARAM_KEY_MGMT, wpa_s->key_mgmt);
 wpa_sm_set_param(wpa_s->wpa, WPA_PARAM_PAIRWISE,
    wpa_s->pairwise_cipher);
 wpa_sm_set_param(wpa_s->wpa, WPA_PARAM_GROUP, wpa_s->group_cipher);





 pmksa_cache_clear_current(wpa_s->wpa);
}
