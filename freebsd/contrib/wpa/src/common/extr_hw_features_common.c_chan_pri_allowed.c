
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_channel_data {int flag; int allowed_bw; } ;


 int HOSTAPD_CHAN_DISABLED ;
 int HOSTAPD_CHAN_WIDTH_20 ;

int chan_pri_allowed(const struct hostapd_channel_data *chan)
{
 return !(chan->flag & HOSTAPD_CHAN_DISABLED) &&
  (chan->allowed_bw & HOSTAPD_CHAN_WIDTH_20);
}
