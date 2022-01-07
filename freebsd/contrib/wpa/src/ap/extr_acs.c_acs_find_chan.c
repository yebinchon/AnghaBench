
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* current_mode; } ;
struct hostapd_channel_data {int flag; int freq; } ;
struct TYPE_2__ {int num_channels; struct hostapd_channel_data* channels; } ;


 int HOSTAPD_CHAN_DISABLED ;

__attribute__((used)) static struct hostapd_channel_data *acs_find_chan(struct hostapd_iface *iface,
        int freq)
{
 struct hostapd_channel_data *chan;
 int i;

 for (i = 0; i < iface->current_mode->num_channels; i++) {
  chan = &iface->current_mode->channels[i];

  if (chan->flag & HOSTAPD_CHAN_DISABLED)
   continue;

  if (chan->freq == freq)
   return chan;
 }

 return ((void*)0);
}
