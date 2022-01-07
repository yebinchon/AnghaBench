
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hostapd_iface {struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int flag; scalar_t__ chan; } ;







 int HOSTAPD_CHAN_RADAR ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int dfs_check_chans_radar (struct hostapd_iface*,int,int) ;
 int dfs_get_start_chan_idx (struct hostapd_iface*,int*) ;
 int dfs_get_used_n_chans (struct hostapd_iface*,int*) ;
 int ieee80211_freq_to_chan (int,scalar_t__*) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int dfs_are_channels_overlapped(struct hostapd_iface *iface, int freq,
           int chan_width, int cf1, int cf2)
{
 int start_chan_idx, start_chan_idx1;
 struct hostapd_hw_modes *mode;
 struct hostapd_channel_data *chan;
 int n_chans, n_chans1, i, j, frequency = freq, radar_n_chans = 1;
 u8 radar_chan;
 int res = 0;


 mode = iface->current_mode;
 start_chan_idx = dfs_get_start_chan_idx(iface, &start_chan_idx1);
 n_chans = dfs_get_used_n_chans(iface, &n_chans1);


 if (!dfs_check_chans_radar(iface, start_chan_idx, n_chans))
  return 0;


 switch (chan_width) {
 case 130:
 case 131:
  radar_n_chans = 1;
  if (frequency == 0)
   frequency = cf1;
  break;
 case 129:
  radar_n_chans = 2;
  frequency = cf1 - 10;
  break;
 case 128:
  radar_n_chans = 4;
  frequency = cf1 - 30;
  break;
 case 132:
  radar_n_chans = 8;
  frequency = cf1 - 70;
  break;
 default:
  wpa_printf(MSG_INFO, "DFS chan_width %d not supported",
      chan_width);
  break;
 }

 ieee80211_freq_to_chan(frequency, &radar_chan);

 for (i = 0; i < n_chans; i++) {
  chan = &mode->channels[start_chan_idx + i];
  if (!(chan->flag & HOSTAPD_CHAN_RADAR))
   continue;
  for (j = 0; j < radar_n_chans; j++) {
   wpa_printf(MSG_DEBUG, "checking our: %d, radar: %d",
       chan->chan, radar_chan + j * 4);
   if (chan->chan == radar_chan + j * 4)
    res++;
  }
 }

 wpa_printf(MSG_DEBUG, "overlapped: %d", res);

 return res;
}
