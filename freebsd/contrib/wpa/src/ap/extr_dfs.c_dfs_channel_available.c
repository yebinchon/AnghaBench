
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_channel_data {int flag; } ;


 int HOSTAPD_CHAN_DFS_AVAILABLE ;
 int HOSTAPD_CHAN_DFS_MASK ;
 int HOSTAPD_CHAN_DFS_UNAVAILABLE ;
 int HOSTAPD_CHAN_DISABLED ;
 int HOSTAPD_CHAN_RADAR ;

__attribute__((used)) static int dfs_channel_available(struct hostapd_channel_data *chan,
     int skip_radar)
{





 if (skip_radar && (chan->flag & HOSTAPD_CHAN_RADAR) &&
     ((chan->flag & HOSTAPD_CHAN_DFS_MASK) !=
      HOSTAPD_CHAN_DFS_AVAILABLE))
  return 0;

 if (chan->flag & HOSTAPD_CHAN_DISABLED)
  return 0;
 if ((chan->flag & HOSTAPD_CHAN_RADAR) &&
     ((chan->flag & HOSTAPD_CHAN_DFS_MASK) ==
      HOSTAPD_CHAN_DFS_UNAVAILABLE))
  return 0;
 return 1;
}
