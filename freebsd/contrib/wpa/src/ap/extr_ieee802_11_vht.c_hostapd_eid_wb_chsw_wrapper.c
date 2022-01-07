
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int bandwidth; int center_freq2; int center_freq1; int freq; int vht_enabled; int channel; } ;
struct hostapd_data {TYPE_1__ cs_freq_params; } ;


 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 int WLAN_EID_VHT_CHANNEL_SWITCH_WRAPPER ;
 int WLAN_EID_VHT_WIDE_BW_CHSWITCH ;
 scalar_t__ ieee80211_freq_to_chan (int,void**) ;

u8 * hostapd_eid_wb_chsw_wrapper(struct hostapd_data *hapd, u8 *eid)
{
 u8 bw, chan1, chan2 = 0;
 int freq1;

 if (!hapd->cs_freq_params.channel ||
     !hapd->cs_freq_params.vht_enabled)
  return eid;


 switch (hapd->cs_freq_params.bandwidth) {
 case 40:
  bw = 0;
  break;
 case 80:

  if (!hapd->cs_freq_params.center_freq2)
   bw = 1;
  else
   bw = 3;
  break;
 case 160:
  bw = 2;
  break;
 default:

  return eid;
 }

 freq1 = hapd->cs_freq_params.center_freq1 ?
  hapd->cs_freq_params.center_freq1 :
  hapd->cs_freq_params.freq;
 if (ieee80211_freq_to_chan(freq1, &chan1) !=
     HOSTAPD_MODE_IEEE80211A)
  return eid;

 if (hapd->cs_freq_params.center_freq2 &&
     ieee80211_freq_to_chan(hapd->cs_freq_params.center_freq2,
       &chan2) != HOSTAPD_MODE_IEEE80211A)
  return eid;

 *eid++ = WLAN_EID_VHT_CHANNEL_SWITCH_WRAPPER;
 *eid++ = 5;
 *eid++ = WLAN_EID_VHT_WIDE_BW_CHSWITCH;
 *eid++ = 3;
 *eid++ = bw;
 *eid++ = chan1;
 *eid++ = chan2;

 return eid;
}
