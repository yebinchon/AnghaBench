
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int ieee80211_chan_to_freq_eu(u8 op_class, u8 chan)
{
 switch (op_class) {
 case 4:
 case 11:
 case 12:
  if (chan < 1 || chan > 13)
   return -1;
  return 2407 + 5 * chan;
 case 1:
 case 2:
 case 5:
 case 6:
 case 8:
 case 9:
  if (chan < 36 || chan > 64)
   return -1;
  return 5000 + 5 * chan;
 case 3:
 case 7:
 case 10:
 case 16:
  if (chan < 100 || chan > 140)
   return -1;
  return 5000 + 5 * chan;
 case 17:
  if (chan < 149 || chan > 169)
   return -1;
  return 5000 + 5 * chan;
 case 18:
  if (chan < 1 || chan > 4)
   return -1;
  return 56160 + 2160 * chan;
 }
 return -1;
}
