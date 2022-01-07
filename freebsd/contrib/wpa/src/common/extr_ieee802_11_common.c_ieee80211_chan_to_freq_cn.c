
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int ieee80211_chan_to_freq_cn(u8 op_class, u8 chan)
{
 switch (op_class) {
 case 7:
 case 8:
 case 9:
  if (chan < 1 || chan > 13)
   return -1;
  return 2407 + 5 * chan;
 case 1:
 case 2:
 case 4:
 case 5:
  if (chan < 36 || chan > 64)
   return -1;
  return 5000 + 5 * chan;
 case 3:
 case 6:
  if (chan < 149 || chan > 165)
   return -1;
  return 5000 + 5 * chan;
 }
 return -1;
}
