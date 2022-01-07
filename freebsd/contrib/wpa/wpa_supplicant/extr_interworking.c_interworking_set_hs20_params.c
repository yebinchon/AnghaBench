
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_driver_capa {int key_mgmt; } ;
struct TYPE_2__ {scalar_t__ pmf; } ;


 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int WPA_DRIVER_CAPA_KEY_MGMT_FT ;
 scalar_t__ wpa_config_set (struct wpa_ssid*,char*,char const*,int ) ;
 int wpa_drv_get_capa (struct wpa_supplicant*,struct wpa_driver_capa*) ;

__attribute__((used)) static int interworking_set_hs20_params(struct wpa_supplicant *wpa_s,
     struct wpa_ssid *ssid)
{
 const char *key_mgmt = ((void*)0);
 if (!key_mgmt)
  key_mgmt = wpa_s->conf->pmf != NO_MGMT_FRAME_PROTECTION ?
   "WPA-EAP WPA-EAP-SHA256" : "WPA-EAP";
 if (wpa_config_set(ssid, "key_mgmt", key_mgmt, 0) < 0 ||
     wpa_config_set(ssid, "proto", "RSN", 0) < 0 ||
     wpa_config_set(ssid, "ieee80211w", "1", 0) < 0 ||
     wpa_config_set(ssid, "pairwise", "CCMP", 0) < 0)
  return -1;
 return 0;
}
