
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



char *dump_linkspeed_compat(uint32_t speed)
{
 switch (speed) {
 case 1:
  return ("SDR");
  break;
 case 2:
  return ("DDR");
  break;
 case 4:
  return ("QDR");
  break;
 }
 return ("???");
}
