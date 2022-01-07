
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct wpa_used_freq_data {int freq; unsigned int flags; } ;
struct TYPE_8__ {int num_modes; int modes; } ;
struct wpa_supplicant {int drv_flags; TYPE_5__* global; TYPE_6__* ap_iface; int p2p_group; TYPE_3__* conf; TYPE_2__ hw; TYPE_1__* current_ssid; } ;
struct TYPE_12__ {TYPE_4__* current_mode; } ;
struct TYPE_11__ {int p2p; } ;
struct TYPE_10__ {scalar_t__ mode; } ;
struct TYPE_9__ {scalar_t__ p2p_go_freq_change_policy; } ;
struct TYPE_7__ {int frequency; } ;


 int MSG_DEBUG ;
 unsigned int P2P_GO_FREQ_CHANGE_TIME ;
 scalar_t__ P2P_GO_FREQ_MOVE_SCM ;
 scalar_t__ P2P_GO_FREQ_MOVE_SCM_ECSA ;
 scalar_t__ P2P_GO_FREQ_MOVE_SCM_PEER_SUPPORTS ;
 unsigned int P2P_RECONSIDER_GO_MOVE_DELAY ;
 int WPA_DRIVER_FLAGS_AP_CSA ;
 int WPA_DRIVER_FLAGS_DFS_OFFLOAD ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (unsigned int,int ,int ,struct wpa_supplicant*,int *) ;
 scalar_t__ hostapd_csa_in_progress (TYPE_6__*) ;
 scalar_t__ ieee80211_freq_to_chan (int,int *) ;
 scalar_t__ ieee80211_is_dfs (int,int ,int ) ;
 int p2p_get_group_num_members (int ) ;
 int p2p_supported_freq (int ,int) ;
 int p2p_supported_freq_go (int ,int) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 int wpas_p2p_disallowed_freq (TYPE_5__*,int) ;
 scalar_t__ wpas_p2p_go_clients_support_ecsa (struct wpa_supplicant*) ;
 scalar_t__ wpas_p2p_go_is_peer_freq (struct wpa_supplicant*,int) ;
 int wpas_p2p_go_update_common_freqs (struct wpa_supplicant*) ;
 scalar_t__ wpas_p2p_in_progress (struct wpa_supplicant*) ;
 int wpas_p2p_move_go ;
 int wpas_p2p_reconsider_moving_go ;

__attribute__((used)) static void wpas_p2p_consider_moving_one_go(struct wpa_supplicant *wpa_s,
         struct wpa_used_freq_data *freqs,
         unsigned int num)
{
 unsigned int i, invalid_freq = 0, policy_move = 0, flags = 0;
 unsigned int timeout;
 int freq;
 int dfs_offload;

 wpas_p2p_go_update_common_freqs(wpa_s);

 freq = wpa_s->current_ssid->frequency;
 dfs_offload = (wpa_s->drv_flags & WPA_DRIVER_FLAGS_DFS_OFFLOAD) &&
  ieee80211_is_dfs(freq, wpa_s->hw.modes, wpa_s->hw.num_modes);
 for (i = 0, invalid_freq = 0; i < num; i++) {
  if (freqs[i].freq == freq) {
   flags = freqs[i].flags;


   if (!p2p_supported_freq_go(wpa_s->global->p2p, freq) &&
       !dfs_offload) {
    wpa_dbg(wpa_s, MSG_DEBUG,
     "P2P: Freq=%d MHz no longer valid for GO",
     freq);
    invalid_freq = 1;
   }
  } else if (freqs[i].flags == 0) {

   continue;
  } else if (!p2p_supported_freq(wpa_s->global->p2p,
            freqs[i].freq) && !dfs_offload) {

   continue;
  } else if (wpa_s->conf->p2p_go_freq_change_policy ==
      P2P_GO_FREQ_MOVE_SCM) {
   policy_move = 1;
  } else if (wpa_s->conf->p2p_go_freq_change_policy ==
      P2P_GO_FREQ_MOVE_SCM_PEER_SUPPORTS &&
      wpas_p2p_go_is_peer_freq(wpa_s, freqs[i].freq)) {
   policy_move = 1;
  } else if ((wpa_s->conf->p2p_go_freq_change_policy ==
       P2P_GO_FREQ_MOVE_SCM_ECSA) &&
      wpas_p2p_go_is_peer_freq(wpa_s, freqs[i].freq)) {
   if (!p2p_get_group_num_members(wpa_s->p2p_group)) {
    policy_move = 1;
   } else if ((wpa_s->drv_flags &
        WPA_DRIVER_FLAGS_AP_CSA) &&
       wpas_p2p_go_clients_support_ecsa(wpa_s)) {
    u8 chan;





    if (wpa_s->ap_iface->current_mode->mode ==
        ieee80211_freq_to_chan(freqs[i].freq,
          &chan))
     policy_move = 1;
   }
  }
 }

 wpa_dbg(wpa_s, MSG_DEBUG,
  "P2P: GO move: invalid_freq=%u, policy_move=%u, flags=0x%X",
  invalid_freq, policy_move, flags);





 if (!invalid_freq || policy_move) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Cancel a GO move from freq=%d MHz", freq);
  eloop_cancel_timeout(wpas_p2p_move_go, wpa_s, ((void*)0));

  if (wpas_p2p_in_progress(wpa_s)) {
   wpa_dbg(wpa_s, MSG_DEBUG,
    "P2P: GO move: policy CS is not allowed - setting timeout to re-consider GO move");
   eloop_cancel_timeout(wpas_p2p_reconsider_moving_go,
          wpa_s, ((void*)0));
   eloop_register_timeout(P2P_RECONSIDER_GO_MOVE_DELAY, 0,
            wpas_p2p_reconsider_moving_go,
            wpa_s, ((void*)0));
   return;
  }
 }

 if (!invalid_freq && (!policy_move || flags != 0)) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Not initiating a GO frequency change");
  return;
 }





 if (hostapd_csa_in_progress(wpa_s->ap_iface)) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Not initiating a GO frequency change - CSA is in progress");
  return;
 }

 if (invalid_freq && !wpas_p2p_disallowed_freq(wpa_s->global, freq))
  timeout = P2P_GO_FREQ_CHANGE_TIME;
 else
  timeout = 0;

 wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Move GO from freq=%d MHz in %d secs",
  freq, timeout);
 eloop_cancel_timeout(wpas_p2p_move_go, wpa_s, ((void*)0));
 eloop_register_timeout(timeout, 0, wpas_p2p_move_go, wpa_s, ((void*)0));
}
