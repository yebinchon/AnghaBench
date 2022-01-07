
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 num_chan_to_bw(int num_chans)
{
 switch (num_chans) {
 case 2:
 case 4:
 case 8:
  return num_chans * 20;
 default:
  return 20;
 }
}
