
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
ub_mem_type(int flags)
{

 switch (flags & 0x000F) {
 case 129:
  return ("FLASH");
 case 130:
  return ("DRAM");
 case 128:
  return ("SRAM");
 default:
  return ("Unknown");
 }
}
