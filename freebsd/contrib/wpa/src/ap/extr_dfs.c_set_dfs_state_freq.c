
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hostapd_iface {struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int freq; int flag; } ;


 int HOSTAPD_CHAN_DFS_MASK ;
 int HOSTAPD_CHAN_RADAR ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int set_dfs_state_freq(struct hostapd_iface *iface, int freq, u32 state)
{
 struct hostapd_hw_modes *mode;
 struct hostapd_channel_data *chan = ((void*)0);
 int i;

 mode = iface->current_mode;
 if (mode == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "set_dfs_state 0x%X for %d MHz", state, freq);
 for (i = 0; i < iface->current_mode->num_channels; i++) {
  chan = &iface->current_mode->channels[i];
  if (chan->freq == freq) {
   if (chan->flag & HOSTAPD_CHAN_RADAR) {
    chan->flag &= ~HOSTAPD_CHAN_DFS_MASK;
    chan->flag |= state;
    return 1;
   }
  }
 }
 wpa_printf(MSG_WARNING, "Can't set DFS state for freq %d MHz", freq);
 return 0;
}
