
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int drv_flags; TYPE_1__* conf; } ;
struct wpa_ssid {size_t ssid_len; int key_mgmt; struct wpa_ssid* next; int * bssid; scalar_t__ bssid_set; int * ssid; } ;
struct TYPE_2__ {scalar_t__ ap_scan; struct wpa_ssid* ssid; } ;


 int ETH_ALEN ;
 int MSG_WARNING ;
 int SSID_MAX_LEN ;
 int WPA_DRIVER_FLAGS_WIRED ;
 int WPA_KEY_MGMT_WPS ;
 scalar_t__ os_memcmp (int *,int *,int) ;
 scalar_t__ owe_trans_ssid_match (struct wpa_supplicant*,int *,int *,size_t) ;
 scalar_t__ wpa_drv_get_bssid (struct wpa_supplicant*,int *) ;
 int wpa_drv_get_ssid (struct wpa_supplicant*,int *) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpas_network_disabled (struct wpa_supplicant*,struct wpa_ssid*) ;

struct wpa_ssid * wpa_supplicant_get_ssid(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *entry;
 u8 ssid[SSID_MAX_LEN];
 int res;
 size_t ssid_len;
 u8 bssid[ETH_ALEN];
 int wired;

 res = wpa_drv_get_ssid(wpa_s, ssid);
 if (res < 0) {
  wpa_msg(wpa_s, MSG_WARNING, "Could not read SSID from "
   "driver");
  return ((void*)0);
 }
 ssid_len = res;

 if (wpa_drv_get_bssid(wpa_s, bssid) < 0) {
  wpa_msg(wpa_s, MSG_WARNING, "Could not read BSSID from "
   "driver");
  return ((void*)0);
 }

 wired = wpa_s->conf->ap_scan == 0 &&
  (wpa_s->drv_flags & WPA_DRIVER_FLAGS_WIRED);

 entry = wpa_s->conf->ssid;
 while (entry) {
  if (!wpas_network_disabled(wpa_s, entry) &&
      ((ssid_len == entry->ssid_len &&
        (!entry->ssid ||
         os_memcmp(ssid, entry->ssid, ssid_len) == 0)) ||
       wired) &&
      (!entry->bssid_set ||
       os_memcmp(bssid, entry->bssid, ETH_ALEN) == 0))
   return entry;
  if (!wpas_network_disabled(wpa_s, entry) && entry->bssid_set &&
      entry->ssid_len == 0 &&
      os_memcmp(bssid, entry->bssid, ETH_ALEN) == 0)
   return entry;

  entry = entry->next;
 }

 return ((void*)0);
}
