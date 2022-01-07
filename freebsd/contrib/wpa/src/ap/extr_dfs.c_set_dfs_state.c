
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hostapd_iface {struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {scalar_t__ mode; } ;







 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 scalar_t__ set_dfs_state_freq (struct hostapd_iface*,int,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int set_dfs_state(struct hostapd_iface *iface, int freq, int ht_enabled,
    int chan_offset, int chan_width, int cf1,
    int cf2, u32 state)
{
 int n_chans = 1, i;
 struct hostapd_hw_modes *mode;
 int frequency = freq;
 int ret = 0;

 mode = iface->current_mode;
 if (mode == ((void*)0))
  return 0;

 if (mode->mode != HOSTAPD_MODE_IEEE80211A) {
  wpa_printf(MSG_WARNING, "current_mode != IEEE80211A");
  return 0;
 }


 switch (chan_width) {
 case 130:
 case 131:
  n_chans = 1;
  if (frequency == 0)
   frequency = cf1;
  break;
 case 129:
  n_chans = 2;
  frequency = cf1 - 10;
  break;
 case 128:
  n_chans = 4;
  frequency = cf1 - 30;
  break;
 case 132:
  n_chans = 8;
  frequency = cf1 - 70;
  break;
 default:
  wpa_printf(MSG_INFO, "DFS chan_width %d not supported",
      chan_width);
  break;
 }

 wpa_printf(MSG_DEBUG, "DFS freq: %dMHz, n_chans: %d", frequency,
     n_chans);
 for (i = 0; i < n_chans; i++) {
  ret += set_dfs_state_freq(iface, frequency, state);
  frequency = frequency + 20;
 }

 return ret;
}
