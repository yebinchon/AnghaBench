
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct hostapd_iface {TYPE_1__* conf; struct hostapd_hw_modes* current_mode; } ;
struct hostapd_hw_modes {scalar_t__ mode; } ;
struct hostapd_channel_data {int dummy; } ;
typedef int _rand ;
struct TYPE_2__ {scalar_t__ secondary_channel; } ;


 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 int MSG_DEBUG ;
 int dfs_adjust_center_freq (struct hostapd_iface*,struct hostapd_channel_data*,int,scalar_t__*,scalar_t__*) ;
 int dfs_find_channel (struct hostapd_iface*,struct hostapd_channel_data**,int,int) ;
 scalar_t__ os_get_random (scalar_t__*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct hostapd_channel_data *
dfs_get_valid_channel(struct hostapd_iface *iface,
        int *secondary_channel,
        u8 *oper_centr_freq_seg0_idx,
        u8 *oper_centr_freq_seg1_idx,
        int skip_radar)
{
 struct hostapd_hw_modes *mode;
 struct hostapd_channel_data *chan = ((void*)0);
 int num_available_chandefs;
 int chan_idx;
 u32 _rand;

 wpa_printf(MSG_DEBUG, "DFS: Selecting random channel");
 *secondary_channel = 0;
 *oper_centr_freq_seg0_idx = 0;
 *oper_centr_freq_seg1_idx = 0;

 if (iface->current_mode == ((void*)0))
  return ((void*)0);

 mode = iface->current_mode;
 if (mode->mode != HOSTAPD_MODE_IEEE80211A)
  return ((void*)0);


 num_available_chandefs = dfs_find_channel(iface, ((void*)0), 0, skip_radar);
 if (num_available_chandefs == 0)
  return ((void*)0);

 if (os_get_random((u8 *) &_rand, sizeof(_rand)) < 0)
  return ((void*)0);
 chan_idx = _rand % num_available_chandefs;
 dfs_find_channel(iface, &chan, chan_idx, skip_radar);


 if (iface->conf->secondary_channel)
  *secondary_channel = 1;
 else
  *secondary_channel = 0;

 dfs_adjust_center_freq(iface, chan,
          *secondary_channel,
          oper_centr_freq_seg0_idx,
          oper_centr_freq_seg1_idx);

 return chan;
}
