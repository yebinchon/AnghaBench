
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
ata_version(int ver)
{
 int bit;

 if (ver == 0xffff)
  return 0;
 for (bit = 15; bit >= 0; bit--)
  if (ver & (1<<bit))
   return bit;
 return 0;
}
