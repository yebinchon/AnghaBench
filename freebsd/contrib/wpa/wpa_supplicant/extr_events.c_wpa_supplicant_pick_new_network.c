
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {scalar_t__ mode; int key_mgmt; int ssid_len; int ssid; struct wpa_ssid* pnext; } ;
struct TYPE_2__ {int num_prio; struct wpa_ssid** pssid; } ;


 int MSG_INFO ;
 scalar_t__ WPAS_MODE_AP ;
 scalar_t__ WPAS_MODE_IBSS ;
 scalar_t__ WPAS_MODE_MESH ;
 int WPA_KEY_MGMT_NONE ;
 int WPA_KEY_MGMT_WPA_NONE ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,int ) ;
 int wpa_ssid_txt (int ,int ) ;
 scalar_t__ wpas_network_disabled (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static struct wpa_ssid *
wpa_supplicant_pick_new_network(struct wpa_supplicant *wpa_s)
{
 int prio;
 struct wpa_ssid *ssid;

 for (prio = 0; prio < wpa_s->conf->num_prio; prio++) {
  for (ssid = wpa_s->conf->pssid[prio]; ssid; ssid = ssid->pnext)
  {
   if (wpas_network_disabled(wpa_s, ssid))
    continue;

   if (ssid->mode == WPAS_MODE_IBSS &&
       !(ssid->key_mgmt & (WPA_KEY_MGMT_NONE |
      WPA_KEY_MGMT_WPA_NONE))) {
    wpa_msg(wpa_s, MSG_INFO,
     "IBSS RSN not supported in the build - cannot use the profile for SSID '%s'",
     wpa_ssid_txt(ssid->ssid,
           ssid->ssid_len));
    continue;
   }

   if (ssid->mode == WPAS_MODE_IBSS ||
       ssid->mode == WPAS_MODE_AP ||
       ssid->mode == WPAS_MODE_MESH)
    return ssid;
  }
 }
 return ((void*)0);
}
