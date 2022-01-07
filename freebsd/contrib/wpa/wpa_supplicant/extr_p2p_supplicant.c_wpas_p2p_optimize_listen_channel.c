
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_used_freq_data {int freq; } ;
struct wpa_supplicant {scalar_t__ wpa_state; TYPE_2__* global; int current_ssid; TYPE_1__* conf; } ;
struct TYPE_4__ {int p2p; } ;
struct TYPE_3__ {int p2p_optimize_listen_chan; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_COMPLETED ;
 int ieee80211_freq_to_chan (int ,int*) ;
 int p2p_get_listen_channel (int ) ;
 int p2p_set_listen_channel (int ,int,int,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int) ;

__attribute__((used)) static void wpas_p2p_optimize_listen_channel(struct wpa_supplicant *wpa_s,
          struct wpa_used_freq_data *freqs,
          unsigned int num)
{
 u8 curr_chan, cand, chan;
 unsigned int i;





 if (!wpa_s->conf->p2p_optimize_listen_chan)
  return;

 if (!wpa_s->current_ssid || wpa_s->wpa_state != WPA_COMPLETED)
  return;

 curr_chan = p2p_get_listen_channel(wpa_s->global->p2p);
 for (i = 0, cand = 0; i < num; i++) {
  ieee80211_freq_to_chan(freqs[i].freq, &chan);
  if (curr_chan == chan) {
   cand = 0;
   break;
  }

  if (chan == 1 || chan == 6 || chan == 11)
   cand = chan;
 }

 if (cand) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Update Listen channel to %u based on operating channel",
   cand);
  p2p_set_listen_channel(wpa_s->global->p2p, 81, cand, 0);
 }
}
