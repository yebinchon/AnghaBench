
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int convert2width (int) ;

__attribute__((used)) static int calculate_chan_offset(int width, int freq, int cf1, int cf2)
{
 int freq1 = 0;

 switch (convert2width(width)) {
 case 132:
 case 133:
  return 0;
 case 131:
  freq1 = cf1 - 10;
  break;
 case 130:
  freq1 = cf1 - 30;
  break;
 case 134:
  freq1 = cf1 - 70;
  break;
 case 128:
 case 129:

  return 0;
 }

 return (abs(freq - freq1) / 20) % 2 == 0 ? 1 : -1;
}
