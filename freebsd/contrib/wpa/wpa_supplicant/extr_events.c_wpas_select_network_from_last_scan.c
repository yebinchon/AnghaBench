
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; int scan_interval; int network_select; int auto_network_select; scalar_t__ after_wps; scalar_t__ owe_transition_search; TYPE_1__* conf; scalar_t__ p2p_in_invitation; scalar_t__ show_group_started; scalar_t__ p2p_in_provisioning; struct wpa_ssid* current_ssid; scalar_t__ ifmsh; scalar_t__ p2p_mgmt; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_bss {int dummy; } ;
struct TYPE_2__ {scalar_t__ cred; scalar_t__ interworking; scalar_t__ auto_interworking; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 scalar_t__ WPA_AUTHENTICATING ;
 int WPA_EVENT_NETWORK_NOT_FOUND ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct wpa_supplicant*,int *) ;
 int interworking_start_fetch_anqp (struct wpa_supplicant*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_msg_ctrl (struct wpa_supplicant*,int ,int ) ;
 int wpa_supplicant_associate (struct wpa_supplicant*,int *,struct wpa_ssid*) ;
 scalar_t__ wpa_supplicant_connect (struct wpa_supplicant*,struct wpa_bss*,struct wpa_ssid*) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_need_to_roam (struct wpa_supplicant*,struct wpa_bss*,struct wpa_ssid*) ;
 struct wpa_bss* wpa_supplicant_pick_network (struct wpa_supplicant*,struct wpa_ssid**) ;
 struct wpa_ssid* wpa_supplicant_pick_new_network (struct wpa_supplicant*) ;
 int wpa_supplicant_req_new_scan (struct wpa_supplicant*,int,int) ;
 scalar_t__ wpa_supplicant_req_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_rsn_preauth_scan_results (struct wpa_supplicant*) ;
 int wpas_network_reenabled ;
 int wpas_p2p_scan_no_go_seen (struct wpa_supplicant*) ;
 int wpas_reenabled_network_time (struct wpa_supplicant*) ;
 scalar_t__ wpas_wps_searching (struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_select_network_from_last_scan(struct wpa_supplicant *wpa_s,
           int new_scan, int own_request)
{
 struct wpa_bss *selected;
 struct wpa_ssid *ssid = ((void*)0);
 int time_to_reenable = wpas_reenabled_network_time(wpa_s);

 if (time_to_reenable > 0) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Postpone network selection by %d seconds since all networks are disabled",
   time_to_reenable);
  eloop_cancel_timeout(wpas_network_reenabled, wpa_s, ((void*)0));
  eloop_register_timeout(time_to_reenable, 0,
           wpas_network_reenabled, wpa_s, ((void*)0));
  return 0;
 }

 if (wpa_s->p2p_mgmt)
  return 0;

 wpa_s->owe_transition_search = 0;
 selected = wpa_supplicant_pick_network(wpa_s, &ssid);
 if (selected) {
  int skip;
  skip = !wpa_supplicant_need_to_roam(wpa_s, selected, ssid);
  if (skip) {
   if (new_scan)
    wpa_supplicant_rsn_preauth_scan_results(wpa_s);
   return 0;
  }

  if (ssid != wpa_s->current_ssid &&
      wpa_s->wpa_state >= WPA_AUTHENTICATING) {
   wpa_s->own_disconnect_req = 1;
   wpa_supplicant_deauthenticate(
    wpa_s, WLAN_REASON_DEAUTH_LEAVING);
  }

  if (wpa_supplicant_connect(wpa_s, selected, ssid) < 0) {
   wpa_dbg(wpa_s, MSG_DEBUG, "Connect failed");
   return -1;
  }
  if (new_scan)
   wpa_supplicant_rsn_preauth_scan_results(wpa_s);





  return 1;
 } else {
  wpa_dbg(wpa_s, MSG_DEBUG, "No suitable network found");
  ssid = wpa_supplicant_pick_new_network(wpa_s);
  if (ssid) {
   wpa_dbg(wpa_s, MSG_DEBUG, "Setup a new network");
   wpa_supplicant_associate(wpa_s, ((void*)0), ssid);
   if (new_scan)
    wpa_supplicant_rsn_preauth_scan_results(wpa_s);
  } else if (own_request) {





   int timeout_sec = wpa_s->scan_interval;
   int timeout_usec = 0;
   if (wpa_supplicant_req_sched_scan(wpa_s))
    wpa_supplicant_req_new_scan(wpa_s, timeout_sec,
           timeout_usec);

   wpa_msg_ctrl(wpa_s, MSG_INFO,
         WPA_EVENT_NETWORK_NOT_FOUND);
  }
 }
 return 0;
}
