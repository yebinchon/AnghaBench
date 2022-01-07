
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ NUM_HOSTAPD_MODES ;
 scalar_t__ ieee80211_freq_to_channel_ext (unsigned int,int ,int ,int *,int *) ;

int p2p_freq_to_channel(unsigned int freq, u8 *op_class, u8 *channel)
{
 if (ieee80211_freq_to_channel_ext(freq, 0, 0, op_class, channel) ==
     NUM_HOSTAPD_MODES)
  return -1;

 return 0;
}
