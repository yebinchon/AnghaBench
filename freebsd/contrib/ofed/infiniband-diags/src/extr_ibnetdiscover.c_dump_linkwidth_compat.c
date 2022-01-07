
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



char *dump_linkwidth_compat(uint32_t width)
{
 switch (width) {
 case 1:
  return ("1x");
  break;
 case 2:
  return ("4x");
  break;
 case 4:
  return ("8x");
  break;
 case 8:
  return ("12x");
  break;
 case 16:
  return ("2x");
  break;
 }
 return ("??");
}
