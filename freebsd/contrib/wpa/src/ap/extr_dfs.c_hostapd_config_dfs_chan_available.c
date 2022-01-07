
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 int dfs_check_chans_available (struct hostapd_iface*,int,int) ;
 int dfs_get_start_chan_idx (struct hostapd_iface*,int*) ;
 int dfs_get_used_n_chans (struct hostapd_iface*,int*) ;

__attribute__((used)) static int hostapd_config_dfs_chan_available(struct hostapd_iface *iface)
{
 int n_chans, n_chans1, start_chan_idx, start_chan_idx1;


 start_chan_idx = dfs_get_start_chan_idx(iface, &start_chan_idx1);
 if (start_chan_idx < 0)
  return 0;


 n_chans = dfs_get_used_n_chans(iface, &n_chans1);


 return dfs_check_chans_available(iface, start_chan_idx, n_chans);
}
