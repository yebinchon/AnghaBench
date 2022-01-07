
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {int num_channels; struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int freq; } ;



__attribute__((used)) static struct hostapd_channel_data *
dfs_get_chan_data(struct hostapd_hw_modes *mode, int freq, int first_chan_idx)
{
 int i;

 for (i = first_chan_idx; i < mode->num_channels; i++) {
  if (mode->channels[i].freq == freq)
   return &mode->channels[i];
 }

 return ((void*)0);
}
