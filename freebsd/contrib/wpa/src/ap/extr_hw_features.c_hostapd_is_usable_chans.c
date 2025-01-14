
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; int current_mode; } ;
struct hostapd_channel_data {int allowed_bw; } ;
struct TYPE_2__ {int channel; int secondary_channel; int ht40_plus_minus_allowed; } ;


 int HOSTAPD_CHAN_WIDTH_40M ;
 int HOSTAPD_CHAN_WIDTH_40P ;
 int hostapd_is_usable_chan (struct hostapd_iface*,int,int) ;
 struct hostapd_channel_data* hw_get_channel_chan (int ,int,int *) ;

__attribute__((used)) static int hostapd_is_usable_chans(struct hostapd_iface *iface)
{
 int secondary_chan;
 struct hostapd_channel_data *pri_chan;

 pri_chan = hw_get_channel_chan(iface->current_mode,
           iface->conf->channel, ((void*)0));
 if (!pri_chan)
  return 0;

 if (!hostapd_is_usable_chan(iface, iface->conf->channel, 1))
  return 0;

 if (!iface->conf->secondary_channel)
  return 1;

 if (!iface->conf->ht40_plus_minus_allowed)
  return hostapd_is_usable_chan(
   iface, iface->conf->channel +
   iface->conf->secondary_channel * 4, 0);


 secondary_chan = iface->conf->channel + 4;
 if (hostapd_is_usable_chan(iface, secondary_chan, 0) &&
     (pri_chan->allowed_bw & HOSTAPD_CHAN_WIDTH_40P)) {
  iface->conf->secondary_channel = 1;
  return 1;
 }

 secondary_chan = iface->conf->channel - 4;
 if (hostapd_is_usable_chan(iface, secondary_chan, 0) &&
     (pri_chan->allowed_bw & HOSTAPD_CHAN_WIDTH_40M)) {
  iface->conf->secondary_channel = -1;
  return 1;
 }

 return 0;
}
