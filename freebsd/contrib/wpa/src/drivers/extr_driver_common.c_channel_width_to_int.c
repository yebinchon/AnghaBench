
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum chan_width { ____Placeholder_chan_width } chan_width ;
int channel_width_to_int(enum chan_width width)
{
 switch (width) {
 case 131:
 case 132:
  return 20;
 case 130:
  return 40;
 case 129:
  return 80;
 case 128:
 case 133:
  return 160;
 default:
  return 0;
 }
}
