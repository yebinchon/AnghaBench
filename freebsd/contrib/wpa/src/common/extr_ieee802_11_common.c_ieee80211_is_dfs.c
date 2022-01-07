
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hostapd_hw_modes {int num_channels; TYPE_1__* channels; } ;
struct TYPE_2__ {int freq; int flag; } ;


 int HOSTAPD_CHAN_RADAR ;

int ieee80211_is_dfs(int freq, const struct hostapd_hw_modes *modes,
       u16 num_modes)
{
 int i, j;

 if (!modes || !num_modes)
  return (freq >= 5260 && freq <= 5320) ||
   (freq >= 5500 && freq <= 5700);

 for (i = 0; i < num_modes; i++) {
  for (j = 0; j < modes[i].num_channels; j++) {
   if (modes[i].channels[j].freq == freq &&
       (modes[i].channels[j].flag & HOSTAPD_CHAN_RADAR))
    return 1;
  }
 }

 return 0;
}
