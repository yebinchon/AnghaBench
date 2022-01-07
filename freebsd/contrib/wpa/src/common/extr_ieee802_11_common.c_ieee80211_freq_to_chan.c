
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;


 int CHANWIDTH_USE_HT ;
 int ieee80211_freq_to_channel_ext (int,int ,int ,int *,int *) ;

enum hostapd_hw_mode ieee80211_freq_to_chan(int freq, u8 *channel)
{
 u8 op_class;

 return ieee80211_freq_to_channel_ext(freq, 0, CHANWIDTH_USE_HT,
          &op_class, channel);
}
