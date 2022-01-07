
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int chan; int freq; } ;



struct hostapd_channel_data * hw_get_channel_chan(struct hostapd_hw_modes *mode,
        int chan, int *freq)
{
 int i;

 if (freq)
  *freq = 0;

 if (!mode)
  return ((void*)0);

 for (i = 0; i < mode->num_channels; i++) {
  struct hostapd_channel_data *ch = &mode->channels[i];
  if (ch->chan == chan) {
   if (freq)
    *freq = ch->freq;
   return ch;
  }
 }

 return ((void*)0);
}
