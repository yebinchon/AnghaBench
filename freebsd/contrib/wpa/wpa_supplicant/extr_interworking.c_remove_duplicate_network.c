
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int own_disconnect_req; TYPE_1__* conf; int eapol; int wpa; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int id; int ssid; int ssid_len; struct wpa_cred* parent_cred; struct wpa_ssid* next; } ;
struct wpa_cred {int dummy; } ;
struct wpa_bss {int ssid_len; int ssid; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int eapol_sm_notify_config (int ,int *,int *) ;
 scalar_t__ os_memcmp (int ,int ,int ) ;
 int wpa_config_remove_network (TYPE_1__*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_set_config (int ,int *) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpas_notify_network_removed (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static void remove_duplicate_network(struct wpa_supplicant *wpa_s,
         struct wpa_cred *cred,
         struct wpa_bss *bss)
{
 struct wpa_ssid *ssid;

 for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
  if (ssid->parent_cred != cred)
   continue;
  if (ssid->ssid_len != bss->ssid_len ||
      os_memcmp(ssid->ssid, bss->ssid, bss->ssid_len) != 0)
   continue;

  break;
 }

 if (ssid == ((void*)0))
  return;

 wpa_printf(MSG_DEBUG, "Interworking: Remove duplicate network entry for the same credential");

 if (ssid == wpa_s->current_ssid) {
  wpa_sm_set_config(wpa_s->wpa, ((void*)0));
  eapol_sm_notify_config(wpa_s->eapol, ((void*)0), ((void*)0));
  wpa_s->own_disconnect_req = 1;
  wpa_supplicant_deauthenticate(wpa_s,
           WLAN_REASON_DEAUTH_LEAVING);
 }

 wpas_notify_network_removed(wpa_s, ssid);
 wpa_config_remove_network(wpa_s->conf, ssid->id);
}
