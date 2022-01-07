
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int drv_enc; scalar_t__ drv_capa_known; scalar_t__ p2p_mgmt; } ;
struct wpa_ssid {size_t* wep_key_len; scalar_t__ ssid_len; int mem_only_psk; scalar_t__ sae_password; int key_mgmt; int ext_psk; int passphrase; int psk_set; scalar_t__ disabled; } ;


 int NUM_WEP_KEYS ;
 unsigned int WPA_DRIVER_CAPA_ENC_WEP104 ;
 unsigned int WPA_DRIVER_CAPA_ENC_WEP128 ;
 unsigned int WPA_DRIVER_CAPA_ENC_WEP40 ;
 scalar_t__ wpa_key_mgmt_sae (int ) ;
 scalar_t__ wpa_key_mgmt_wpa_psk (int ) ;

int wpas_network_disabled(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
{
 int i;
 unsigned int drv_enc;

 if (wpa_s->p2p_mgmt)
  return 1;

 if (ssid == ((void*)0))
  return 1;

 if (ssid->disabled)
  return 1;

 if (wpa_s->drv_capa_known)
  drv_enc = wpa_s->drv_enc;
 else
  drv_enc = (unsigned int) -1;

 for (i = 0; i < NUM_WEP_KEYS; i++) {
  size_t len = ssid->wep_key_len[i];
  if (len == 0)
   continue;
  if (len == 5 && (drv_enc & WPA_DRIVER_CAPA_ENC_WEP40))
   continue;
  if (len == 13 && (drv_enc & WPA_DRIVER_CAPA_ENC_WEP104))
   continue;
  if (len == 16 && (drv_enc & WPA_DRIVER_CAPA_ENC_WEP128))
   continue;
  return 1;
 }

 if (wpa_key_mgmt_wpa_psk(ssid->key_mgmt) && !ssid->psk_set &&
     (!ssid->passphrase || ssid->ssid_len != 0) && !ssid->ext_psk &&
     !(wpa_key_mgmt_sae(ssid->key_mgmt) && ssid->sae_password) &&
     !ssid->mem_only_psk)
  return 1;

 return 0;
}
