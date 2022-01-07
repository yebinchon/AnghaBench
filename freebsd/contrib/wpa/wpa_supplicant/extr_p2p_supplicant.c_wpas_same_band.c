
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;


 int NUM_HOSTAPD_MODES ;
 int ieee80211_freq_to_chan (int,int *) ;

__attribute__((used)) static int wpas_same_band(int freq1, int freq2)
{
 enum hostapd_hw_mode mode1, mode2;
 u8 chan1, chan2;

 mode1 = ieee80211_freq_to_chan(freq1, &chan1);
 mode2 = ieee80211_freq_to_chan(freq2, &chan2);
 if (mode1 == NUM_HOSTAPD_MODES)
  return 0;
 return mode1 == mode2;
}
