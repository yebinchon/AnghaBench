
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int reassociate; scalar_t__ disconnected; struct wpa_ssid* connect_without_scan; TYPE_1__* global; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ frequency; } ;
struct p2p_go_neg_results {scalar_t__ freq; } ;
struct TYPE_2__ {int p2p; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int P2P_EVENT_REMOVE_AND_REFORM_GROUP ;
 int P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL ;
 int p2p_supported_freq_go (int ,scalar_t__) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_msg_global (struct wpa_supplicant*,int ,int ) ;
 int wpa_printf (int ,char*,scalar_t__) ;
 int wpa_supplicant_ap_deinit (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;
 int wpas_p2p_group_delete (struct wpa_supplicant*,int ) ;
 scalar_t__ wpas_p2p_init_go_params (struct wpa_supplicant*,struct p2p_go_neg_results*,int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void wpas_p2p_move_go_no_csa(struct wpa_supplicant *wpa_s)
{
 struct p2p_go_neg_results params;
 struct wpa_ssid *current_ssid = wpa_s->current_ssid;

 wpa_msg_global(wpa_s, MSG_INFO, P2P_EVENT_REMOVE_AND_REFORM_GROUP);

 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Move GO from freq=%d MHz",
  current_ssid->frequency);




 wpa_supplicant_ap_deinit(wpa_s);


 if (wpas_p2p_init_go_params(wpa_s, &params, 0, 0, 0, 0, 0, 0, ((void*)0))) {
  wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Failed to reselect freq");
  wpas_p2p_group_delete(wpa_s,
          P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL);
  return;
 }
 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: New freq selected for the GO (%u MHz)",
  params.freq);

 if (params.freq &&
     !p2p_supported_freq_go(wpa_s->global->p2p, params.freq)) {
  wpa_printf(MSG_DEBUG,
      "P2P: Selected freq (%u MHz) is not valid for P2P",
      params.freq);
  wpas_p2p_group_delete(wpa_s,
          P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL);
  return;
 }


 current_ssid->frequency = params.freq;
 wpa_s->connect_without_scan = current_ssid;
 wpa_s->reassociate = 1;
 wpa_s->disconnected = 0;
 wpa_supplicant_req_scan(wpa_s, 0, 0);
}
