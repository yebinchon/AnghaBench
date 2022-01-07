
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {int dummy; } ;


 int hw_get_channel_chan (struct hostapd_hw_modes*,int,int*) ;

int hw_get_freq(struct hostapd_hw_modes *mode, int chan)
{
 int freq;

 hw_get_channel_chan(mode, chan, &freq);

 return freq;
}
