
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int freq; int chan; } ;



struct hostapd_channel_data * hw_get_channel_freq(struct hostapd_hw_modes *mode,
        int freq, int *chan)
{
 int i;

 if (chan)
  *chan = 0;

 if (!mode)
  return ((void*)0);

 for (i = 0; i < mode->num_channels; i++) {
  struct hostapd_channel_data *ch = &mode->channels[i];
  if (ch->freq == freq) {
   if (chan)
    *chan = ch->chan;
   return ch;
  }
 }

 return ((void*)0);
}
