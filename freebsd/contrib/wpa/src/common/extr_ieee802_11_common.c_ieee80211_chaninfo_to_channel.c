
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum chan_width { ____Placeholder_chan_width } chan_width ;


 int CHANWIDTH_160MHZ ;
 int CHANWIDTH_80MHZ ;
 int CHANWIDTH_80P80MHZ ;
 int CHANWIDTH_USE_HT ;







 int MSG_WARNING ;
 scalar_t__ NUM_HOSTAPD_MODES ;
 scalar_t__ ieee80211_freq_to_channel_ext (unsigned int,int,int,int *,int *) ;
 int wpa_printf (int ,char*,unsigned int,int,int) ;

int ieee80211_chaninfo_to_channel(unsigned int freq, enum chan_width chanwidth,
      int sec_channel, u8 *op_class, u8 *channel)
{
 int vht = 128;

 switch (chanwidth) {
 case 128:
 case 132:
 case 133:
 case 131:
  vht = CHANWIDTH_USE_HT;
  break;
 case 130:
  vht = CHANWIDTH_80MHZ;
  break;
 case 129:
  vht = CHANWIDTH_80P80MHZ;
  break;
 case 134:
  vht = CHANWIDTH_160MHZ;
  break;
 }

 if (ieee80211_freq_to_channel_ext(freq, sec_channel, vht, op_class,
       channel) == NUM_HOSTAPD_MODES) {
  wpa_printf(MSG_WARNING,
      "Cannot determine operating class and channel (freq=%u chanwidth=%d sec_channel=%d)",
      freq, chanwidth, sec_channel);
  return -1;
 }

 return 0;
}
