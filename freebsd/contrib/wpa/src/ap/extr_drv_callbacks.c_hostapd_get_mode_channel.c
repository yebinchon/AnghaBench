
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* current_mode; } ;
struct hostapd_channel_data {scalar_t__ freq; } ;
struct TYPE_2__ {int num_channels; struct hostapd_channel_data* channels; } ;



__attribute__((used)) static struct hostapd_channel_data * hostapd_get_mode_channel(
 struct hostapd_iface *iface, unsigned int freq)
{
 int i;
 struct hostapd_channel_data *chan;

 for (i = 0; i < iface->current_mode->num_channels; i++) {
  chan = &iface->current_mode->channels[i];
  if ((unsigned int) chan->freq == freq)
   return chan;
 }

 return ((void*)0);
}
