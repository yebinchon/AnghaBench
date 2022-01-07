
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_chan_to_freq (int *,int,int) ;

int p2p_channel_to_freq(int op_class, int channel)
{
 return ieee80211_chan_to_freq(((void*)0), op_class, channel);
}
