
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hostapd_hw_modes {int dummy; } ;
typedef enum chan_allowed { ____Placeholder_chan_allowed } chan_allowed ;


 int ALLOWED ;
 scalar_t__ BW160 ;
 scalar_t__ BW40MINUS ;
 scalar_t__ BW40PLUS ;
 scalar_t__ BW80 ;
 scalar_t__ BW80P80 ;
 unsigned int HOSTAPD_CHAN_HT40MINUS ;
 unsigned int HOSTAPD_CHAN_HT40PLUS ;
 int NOT_ALLOWED ;
 int NO_IR ;
 int allow_channel (struct hostapd_hw_modes*,scalar_t__,unsigned int*) ;
 int verify_160mhz (struct hostapd_hw_modes*,scalar_t__) ;
 int verify_80mhz (struct hostapd_hw_modes*,scalar_t__) ;

enum chan_allowed verify_channel(struct hostapd_hw_modes *mode, u8 channel,
     u8 bw)
{
 unsigned int flag = 0;
 enum chan_allowed res, res2;

 res2 = res = allow_channel(mode, channel, &flag);
 if (bw == BW40MINUS) {
  if (!(flag & HOSTAPD_CHAN_HT40MINUS))
   return NOT_ALLOWED;
  res2 = allow_channel(mode, channel - 4, ((void*)0));
 } else if (bw == BW40PLUS) {
  if (!(flag & HOSTAPD_CHAN_HT40PLUS))
   return NOT_ALLOWED;
  res2 = allow_channel(mode, channel + 4, ((void*)0));
 } else if (bw == BW80) {





  res2 = res = verify_80mhz(mode, channel);
 } else if (bw == BW160) {





  res2 = res = verify_160mhz(mode, channel);
 } else if (bw == BW80P80) {





  res2 = res = verify_80mhz(mode, channel);
 }

 if (res == NOT_ALLOWED || res2 == NOT_ALLOWED)
  return NOT_ALLOWED;

 if (res == NO_IR || res2 == NO_IR)
  return NO_IR;

 return ALLOWED;
}
