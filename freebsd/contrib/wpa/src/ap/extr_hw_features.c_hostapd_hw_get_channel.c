
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_hw_modes {int dummy; } ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_2__ {int num_hw_features; struct hostapd_hw_modes* hw_features; struct hostapd_hw_modes* current_mode; } ;


 int hw_get_chan (struct hostapd_hw_modes*,int) ;

int hostapd_hw_get_channel(struct hostapd_data *hapd, int freq)
{
 int i, channel;
 struct hostapd_hw_modes *mode;

 if (hapd->iface->current_mode) {
  channel = hw_get_chan(hapd->iface->current_mode, freq);
  if (channel)
   return channel;
 }



 if (!hapd->iface->hw_features)
  return 0;
 for (i = 0; i < hapd->iface->num_hw_features; i++) {
  mode = &hapd->iface->hw_features[i];
  channel = hw_get_chan(mode, freq);
  if (channel)
   return channel;
 }
 return 0;
}
