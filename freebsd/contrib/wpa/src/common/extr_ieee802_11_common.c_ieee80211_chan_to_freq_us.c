
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int ieee80211_chan_to_freq_us(u8 op_class, u8 chan)
{
 switch (op_class) {
 case 12:
 case 32:
 case 33:
  if (chan < 1 || chan > 11)
   return -1;
  return 2407 + 5 * chan;
 case 1:
 case 2:
 case 22:
 case 23:
 case 27:
 case 28:
  if (chan < 36 || chan > 64)
   return -1;
  return 5000 + 5 * chan;
 case 4:
 case 24:
  if (chan < 100 || chan > 144)
   return -1;
  return 5000 + 5 * chan;
 case 3:
 case 25:
 case 26:
 case 30:
 case 31:
  if (chan < 149 || chan > 161)
   return -1;
  return 5000 + 5 * chan;
 case 5:
  if (chan < 149 || chan > 165)
   return -1;
  return 5000 + 5 * chan;
 case 34:
  if (chan < 1 || chan > 3)
   return -1;
  return 56160 + 2160 * chan;
 }
 return -1;
}
