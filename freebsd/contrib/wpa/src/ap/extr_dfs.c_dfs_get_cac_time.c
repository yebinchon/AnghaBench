
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {struct hostapd_channel_data* channels; } ;
struct hostapd_channel_data {int flag; unsigned int dfs_cac_ms; } ;


 int HOSTAPD_CHAN_RADAR ;

__attribute__((used)) static unsigned int dfs_get_cac_time(struct hostapd_iface *iface,
         int start_chan_idx, int n_chans)
{
 struct hostapd_channel_data *channel;
 struct hostapd_hw_modes *mode;
 int i;
 unsigned int cac_time_ms = 0;

 mode = iface->current_mode;

 for (i = 0; i < n_chans; i++) {
  channel = &mode->channels[start_chan_idx + i];
  if (!(channel->flag & HOSTAPD_CHAN_RADAR))
   continue;
  if (channel->dfs_cac_ms > cac_time_ms)
   cac_time_ms = channel->dfs_cac_ms;
 }

 return cac_time_ms;
}
