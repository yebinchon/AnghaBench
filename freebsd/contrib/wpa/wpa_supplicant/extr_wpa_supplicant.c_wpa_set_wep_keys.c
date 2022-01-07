
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {scalar_t__* wep_key_len; int wep_tx_keyidx; int * wep_key; } ;


 int NUM_WEP_KEYS ;
 int WPA_ALG_WEP ;
 int wpa_drv_set_key (struct wpa_supplicant*,int ,int *,int,int,int *,int ,int ,scalar_t__) ;

int wpa_set_wep_keys(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
{
 int i, set = 0;

 for (i = 0; i < NUM_WEP_KEYS; i++) {
  if (ssid->wep_key_len[i] == 0)
   continue;

  set = 1;
  wpa_drv_set_key(wpa_s, WPA_ALG_WEP, ((void*)0),
    i, i == ssid->wep_tx_keyidx, ((void*)0), 0,
    ssid->wep_key[i], ssid->wep_key_len[i]);
 }

 return set;
}
