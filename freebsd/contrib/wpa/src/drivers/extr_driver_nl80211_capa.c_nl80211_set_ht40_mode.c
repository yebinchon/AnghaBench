
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int freq; int flag; } ;


 int HOSTAPD_CHAN_HT40 ;

__attribute__((used)) static void nl80211_set_ht40_mode(struct hostapd_hw_modes *mode, int start,
      int end)
{
 int c;

 for (c = 0; c < mode->num_channels; c++) {
  struct hostapd_channel_data *chan = &mode->channels[c];
  if (chan->freq - 10 >= start && chan->freq + 10 <= end)
   chan->flag |= HOSTAPD_CHAN_HT40;
 }
}
