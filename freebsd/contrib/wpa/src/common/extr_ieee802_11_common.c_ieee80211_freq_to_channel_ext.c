
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;





 int HOSTAPD_MODE_IEEE80211A ;
 int HOSTAPD_MODE_IEEE80211AD ;
 int HOSTAPD_MODE_IEEE80211B ;
 int HOSTAPD_MODE_IEEE80211G ;
 int NUM_HOSTAPD_MODES ;

enum hostapd_hw_mode ieee80211_freq_to_channel_ext(unsigned int freq,
         int sec_channel, int vht,
         u8 *op_class, u8 *channel)
{
 u8 vht_opclass;



 if (sec_channel > 1 || sec_channel < -1)
  return NUM_HOSTAPD_MODES;

 if (freq >= 2412 && freq <= 2472) {
  if ((freq - 2407) % 5)
   return NUM_HOSTAPD_MODES;

  if (vht)
   return NUM_HOSTAPD_MODES;


  if (sec_channel == 1)
   *op_class = 83;
  else if (sec_channel == -1)
   *op_class = 84;
  else
   *op_class = 81;

  *channel = (freq - 2407) / 5;

  return HOSTAPD_MODE_IEEE80211G;
 }

 if (freq == 2484) {
  if (sec_channel || vht)
   return NUM_HOSTAPD_MODES;

  *op_class = 82;
  *channel = 14;

  return HOSTAPD_MODE_IEEE80211B;
 }

 if (freq >= 4900 && freq < 5000) {
  if ((freq - 4000) % 5)
   return NUM_HOSTAPD_MODES;
  *channel = (freq - 4000) / 5;
  *op_class = 0;
  return HOSTAPD_MODE_IEEE80211A;
 }

 switch (vht) {
 case 129:
  vht_opclass = 128;
  break;
 case 130:
  vht_opclass = 129;
  break;
 case 128:
  vht_opclass = 130;
  break;
 default:
  vht_opclass = 0;
  break;
 }


 if (freq >= 5180 && freq <= 5240) {
  if ((freq - 5000) % 5)
   return NUM_HOSTAPD_MODES;

  if (vht_opclass)
   *op_class = vht_opclass;
  else if (sec_channel == 1)
   *op_class = 116;
  else if (sec_channel == -1)
   *op_class = 117;
  else
   *op_class = 115;

  *channel = (freq - 5000) / 5;

  return HOSTAPD_MODE_IEEE80211A;
 }


 if (freq >= 5260 && freq <= 5320) {
  if ((freq - 5000) % 5)
   return NUM_HOSTAPD_MODES;

  if (vht_opclass)
   *op_class = vht_opclass;
  else if (sec_channel == 1)
   *op_class = 119;
  else if (sec_channel == -1)
   *op_class = 120;
  else
   *op_class = 118;

  *channel = (freq - 5000) / 5;

  return HOSTAPD_MODE_IEEE80211A;
 }


 if (freq >= 5745 && freq <= 5845) {
  if ((freq - 5000) % 5)
   return NUM_HOSTAPD_MODES;

  if (vht_opclass)
   *op_class = vht_opclass;
  else if (sec_channel == 1)
   *op_class = 126;
  else if (sec_channel == -1)
   *op_class = 127;
  else if (freq <= 5805)
   *op_class = 124;
  else
   *op_class = 125;

  *channel = (freq - 5000) / 5;

  return HOSTAPD_MODE_IEEE80211A;
 }


 if (freq >= 5000 && freq <= 5700) {
  if ((freq - 5000) % 5)
   return NUM_HOSTAPD_MODES;

  if (vht_opclass)
   *op_class = vht_opclass;
  else if (sec_channel == 1)
   *op_class = 122;
  else if (sec_channel == -1)
   *op_class = 123;
  else
   *op_class = 121;

  *channel = (freq - 5000) / 5;

  return HOSTAPD_MODE_IEEE80211A;
 }

 if (freq >= 5000 && freq < 5900) {
  if ((freq - 5000) % 5)
   return NUM_HOSTAPD_MODES;
  *channel = (freq - 5000) / 5;
  *op_class = 0;
  return HOSTAPD_MODE_IEEE80211A;
 }


 if (freq >= 56160 + 2160 * 1 && freq <= 56160 + 2160 * 4) {
  if (sec_channel || vht)
   return NUM_HOSTAPD_MODES;

  *channel = (freq - 56160) / 2160;
  *op_class = 180;

  return HOSTAPD_MODE_IEEE80211AD;
 }

 return NUM_HOSTAPD_MODES;
}
