
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_modes; struct hostapd_hw_modes* modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int freq; int flag; } ;


 int HOSTAPD_CHAN_DISABLED ;

__attribute__((used)) static int chan_supported(struct wpa_supplicant *wpa_s, int freq)
{
 unsigned int i;

 for (i = 0; i < wpa_s->hw.num_modes; i++) {
  struct hostapd_hw_modes *mode = &wpa_s->hw.modes[i];
  int j;

  for (j = 0; j < mode->num_channels; j++) {
   struct hostapd_channel_data *chan;

   chan = &mode->channels[j];
   if (chan->freq == freq &&
       !(chan->flag & HOSTAPD_CHAN_DISABLED))
    return 1;
  }
 }

 return 0;
}
