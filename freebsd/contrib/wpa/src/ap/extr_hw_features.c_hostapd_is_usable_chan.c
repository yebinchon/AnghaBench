
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int current_mode; } ;
struct hostapd_channel_data {int flag; } ;


 int HOSTAPD_CHAN_DISABLED ;
 int HOSTAPD_CHAN_NO_IR ;
 int HOSTAPD_CHAN_RADAR ;
 int MSG_INFO ;
 scalar_t__ chan_pri_allowed (struct hostapd_channel_data*) ;
 struct hostapd_channel_data* hw_get_channel_chan (int ,int,int *) ;
 int wpa_printf (int ,char*,int,char*,int,char*,char*) ;

__attribute__((used)) static int hostapd_is_usable_chan(struct hostapd_iface *iface,
      int channel, int primary)
{
 struct hostapd_channel_data *chan;

 if (!iface->current_mode)
  return 0;

 chan = hw_get_channel_chan(iface->current_mode, channel, ((void*)0));
 if (!chan)
  return 0;

 if ((primary && chan_pri_allowed(chan)) ||
     (!primary && !(chan->flag & HOSTAPD_CHAN_DISABLED)))
  return 1;

 wpa_printf(MSG_INFO,
     "Channel %d (%s) not allowed for AP mode, flags: 0x%x%s%s",
     channel, primary ? "primary" : "secondary",
     chan->flag,
     chan->flag & HOSTAPD_CHAN_NO_IR ? " NO-IR" : "",
     chan->flag & HOSTAPD_CHAN_RADAR ? " RADAR" : "");
 return 0;
}
