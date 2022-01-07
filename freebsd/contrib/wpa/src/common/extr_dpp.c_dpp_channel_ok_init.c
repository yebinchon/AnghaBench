
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct hostapd_hw_modes {int num_channels; TYPE_1__* channels; } ;
struct TYPE_2__ {int flag; scalar_t__ freq; } ;


 int HOSTAPD_CHAN_DISABLED ;
 int HOSTAPD_CHAN_NO_IR ;
 int HOSTAPD_CHAN_RADAR ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,unsigned int) ;

__attribute__((used)) static int dpp_channel_ok_init(struct hostapd_hw_modes *own_modes,
          u16 num_modes, unsigned int freq)
{
 u16 m;
 int c, flag;

 if (!own_modes || !num_modes)
  return 1;

 for (m = 0; m < num_modes; m++) {
  for (c = 0; c < own_modes[m].num_channels; c++) {
   if ((unsigned int) own_modes[m].channels[c].freq !=
       freq)
    continue;
   flag = own_modes[m].channels[c].flag;
   if (!(flag & (HOSTAPD_CHAN_DISABLED |
          HOSTAPD_CHAN_NO_IR |
          HOSTAPD_CHAN_RADAR)))
    return 1;
  }
 }

 wpa_printf(MSG_DEBUG, "DPP: Peer channel %u MHz not supported", freq);
 return 0;
}
