
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int ieee80211_chan_to_freq_jp(u8 op_class, u8 chan)
{
 switch (op_class) {
 case 30:
 case 56:
 case 57:
  if (chan < 1 || chan > 13)
   return -1;
  return 2407 + 5 * chan;
 case 31:
  if (chan != 14)
   return -1;
  return 2414 + 5 * chan;
 case 1:
 case 32:
 case 33:
 case 36:
 case 37:
 case 38:
 case 41:
 case 42:
 case 43:
  if (chan < 34 || chan > 64)
   return -1;
  return 5000 + 5 * chan;
 case 34:
 case 35:
 case 39:
 case 40:
 case 44:
 case 45:
 case 58:
  if (chan < 100 || chan > 140)
   return -1;
  return 5000 + 5 * chan;
 case 59:
  if (chan < 1 || chan > 3)
   return -1;
  return 56160 + 2160 * chan;
 }
 return -1;
}
