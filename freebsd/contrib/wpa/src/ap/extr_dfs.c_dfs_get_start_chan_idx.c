
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int chan; } ;
struct TYPE_4__ {int channel; int secondary_channel; int ieee80211n; scalar_t__ ieee80211ax; scalar_t__ ieee80211ac; } ;






 int MSG_DEBUG ;
 int MSG_INFO ;
 int hostapd_get_oper_centr_freq_seg0_idx (TYPE_1__*) ;
 int hostapd_get_oper_centr_freq_seg1_idx (TYPE_1__*) ;
 int hostapd_get_oper_chwidth (TYPE_1__*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int dfs_get_start_chan_idx(struct hostapd_iface *iface, int *seg1_start)
{
 struct hostapd_hw_modes *mode;
 struct hostapd_channel_data *chan;
 int channel_no = iface->conf->channel;
 int res = -1, i;
 int chan_seg1 = -1;

 *seg1_start = -1;


 if (iface->conf->ieee80211n && iface->conf->secondary_channel == -1)
  channel_no -= 4;


 if (iface->conf->ieee80211ac || iface->conf->ieee80211ax) {
  switch (hostapd_get_oper_chwidth(iface->conf)) {
  case 128:
   break;
  case 130:
   channel_no = hostapd_get_oper_centr_freq_seg0_idx(
    iface->conf) - 6;
   break;
  case 131:
   channel_no = hostapd_get_oper_centr_freq_seg0_idx(
    iface->conf) - 14;
   break;
  case 129:
   channel_no = hostapd_get_oper_centr_freq_seg0_idx(
    iface->conf) - 6;
   chan_seg1 = hostapd_get_oper_centr_freq_seg1_idx(
    iface->conf) - 6;
   break;
  default:
   wpa_printf(MSG_INFO,
       "DFS only VHT20/40/80/160/80+80 is supported now");
   channel_no = -1;
   break;
  }
 }


 mode = iface->current_mode;
 for (i = 0; i < mode->num_channels; i++) {
  chan = &mode->channels[i];
  if (chan->chan == channel_no) {
   res = i;
   break;
  }
 }

 if (res != -1 && chan_seg1 > -1) {
  int found = 0;


  mode = iface->current_mode;
  for (i = 0; i < mode->num_channels; i++) {
   chan = &mode->channels[i];
   if (chan->chan == chan_seg1) {
    *seg1_start = i;
    found = 1;
    break;
   }
  }
  if (!found)
   res = -1;
 }

 if (res == -1) {
  wpa_printf(MSG_DEBUG,
      "DFS chan_idx seems wrong; num-ch: %d ch-no: %d conf-ch-no: %d 11n: %d sec-ch: %d vht-oper-width: %d",
      mode->num_channels, channel_no, iface->conf->channel,
      iface->conf->ieee80211n,
      iface->conf->secondary_channel,
      hostapd_get_oper_chwidth(iface->conf));

  for (i = 0; i < mode->num_channels; i++) {
   wpa_printf(MSG_DEBUG, "Available channel: %d",
       mode->channels[i].chan);
  }
 }

 return res;
}
