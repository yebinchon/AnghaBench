
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {int dummy; } ;


 int hw_get_channel_freq (struct hostapd_hw_modes*,int,int*) ;

int hw_get_chan(struct hostapd_hw_modes *mode, int freq)
{
 int chan;

 hw_get_channel_freq(mode, freq, &chan);

 return chan;
}
