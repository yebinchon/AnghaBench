
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int ieee80211_chan_to_freq_global(u8 op_class, u8 chan)
{

 switch (op_class) {
 case 81:

  if (chan < 1 || chan > 13)
   return -1;
  return 2407 + 5 * chan;
 case 82:

  if (chan != 14)
   return -1;
  return 2414 + 5 * chan;
 case 83:
 case 84:
  if (chan < 1 || chan > 13)
   return -1;
  return 2407 + 5 * chan;
 case 115:
 case 116:
 case 117:
 case 118:
 case 119:
 case 120:
  if (chan < 36 || chan > 64)
   return -1;
  return 5000 + 5 * chan;
 case 121:
 case 122:
 case 123:
  if (chan < 100 || chan > 140)
   return -1;
  return 5000 + 5 * chan;
 case 124:
 case 126:
 case 127:
  if (chan < 149 || chan > 161)
   return -1;
  return 5000 + 5 * chan;
 case 125:
  if (chan < 149 || chan > 169)
   return -1;
  return 5000 + 5 * chan;
 case 128:
 case 130:
  if (chan < 36 || chan > 161)
   return -1;
  return 5000 + 5 * chan;
 case 129:
  if (chan < 36 || chan > 128)
   return -1;
  return 5000 + 5 * chan;
 case 180:
  if (chan < 1 || chan > 4)
   return -1;
  return 56160 + 2160 * chan;
 }
 return -1;
}
