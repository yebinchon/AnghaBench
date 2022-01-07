
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; TYPE_2__* conf; struct wpa_ssid* last_ssid; int eapol; int wpa; TYPE_1__ sme; scalar_t__ current_ssid; scalar_t__ sched_scanning; } ;
struct wpa_ssid {int id; struct wpa_ssid* next; } ;
struct TYPE_4__ {struct wpa_ssid* ssid; } ;


 int MSG_DEBUG ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 scalar_t__ WPA_AUTHENTICATING ;
 int atoi (char*) ;
 int eapol_sm_invalidate_cached_session (int ) ;
 int eapol_sm_notify_config (int ,int *,int *) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int wpa_config_remove_network (TYPE_2__*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_sm_set_config (int ,int *) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_remove_network (struct wpa_supplicant*,int) ;
 int wpas_notify_network_removed (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_remove_network(
 struct wpa_supplicant *wpa_s, char *cmd)
{
 int id;
 struct wpa_ssid *ssid;
 int result;


 if (os_strcmp(cmd, "all") == 0) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: REMOVE_NETWORK all");
  if (wpa_s->sched_scanning)
   wpa_supplicant_cancel_sched_scan(wpa_s);

  eapol_sm_invalidate_cached_session(wpa_s->eapol);
  if (wpa_s->current_ssid) {



   wpa_sm_set_config(wpa_s->wpa, ((void*)0));
   eapol_sm_notify_config(wpa_s->eapol, ((void*)0), ((void*)0));
   if (wpa_s->wpa_state >= WPA_AUTHENTICATING)
    wpa_s->own_disconnect_req = 1;
   wpa_supplicant_deauthenticate(
    wpa_s, WLAN_REASON_DEAUTH_LEAVING);
  }
  ssid = wpa_s->conf->ssid;
  while (ssid) {
   struct wpa_ssid *remove_ssid = ssid;
   id = ssid->id;
   ssid = ssid->next;
   if (wpa_s->last_ssid == remove_ssid)
    wpa_s->last_ssid = ((void*)0);
   wpas_notify_network_removed(wpa_s, remove_ssid);
   wpa_config_remove_network(wpa_s->conf, id);
  }
  return 0;
 }

 id = atoi(cmd);
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: REMOVE_NETWORK id=%d", id);

 result = wpa_supplicant_remove_network(wpa_s, id);
 if (result == -1) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Could not find network "
      "id=%d", id);
  return -1;
 }
 if (result == -2) {
  wpa_printf(MSG_DEBUG, "CTRL_IFACE: Not able to remove the "
      "network id=%d", id);
  return -1;
 }
 return 0;
}
