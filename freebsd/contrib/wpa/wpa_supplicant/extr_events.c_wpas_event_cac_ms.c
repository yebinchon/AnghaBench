
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num_modes; struct hostapd_hw_modes* modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int freq; unsigned int dfs_cac_ms; } ;



__attribute__((used)) static unsigned int wpas_event_cac_ms(const struct wpa_supplicant *wpa_s,
          int freq)
{
 size_t i;
 int j;

 for (i = 0; i < wpa_s->hw.num_modes; i++) {
  const struct hostapd_hw_modes *mode = &wpa_s->hw.modes[i];

  for (j = 0; j < mode->num_channels; j++) {
   const struct hostapd_channel_data *chan;

   chan = &mode->channels[j];
   if (chan->freq == freq)
    return chan->dfs_cac_ms;
  }
 }

 return 0;
}
