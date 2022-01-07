
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {TYPE_2__* current_mode; TYPE_1__* conf; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct TYPE_3__ {int ieee80211h; } ;


 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 int dfs_check_chans_radar (struct hostapd_iface*,int,int) ;
 int dfs_get_start_chan_idx (struct hostapd_iface*,int*) ;
 int dfs_get_used_n_chans (struct hostapd_iface*,int*) ;

int hostapd_is_dfs_required(struct hostapd_iface *iface)
{
 int n_chans, n_chans1, start_chan_idx, start_chan_idx1, res;

 if (!iface->conf->ieee80211h || !iface->current_mode ||
     iface->current_mode->mode != HOSTAPD_MODE_IEEE80211A)
  return 0;


 start_chan_idx = dfs_get_start_chan_idx(iface, &start_chan_idx1);
 if (start_chan_idx == -1)
  return -1;


 n_chans = dfs_get_used_n_chans(iface, &n_chans1);


 res = dfs_check_chans_radar(iface, start_chan_idx, n_chans);
 if (res)
  return res;
 if (start_chan_idx1 >= 0 && n_chans1 > 0)
  res = dfs_check_chans_radar(iface, start_chan_idx1, n_chans1);
 return res;
}
