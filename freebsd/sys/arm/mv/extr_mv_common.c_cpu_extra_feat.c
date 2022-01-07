
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int bootverbose ;
 int printf (char*) ;
 int soc_id (int*,int*) ;

uint32_t
cpu_extra_feat(void)
{
 uint32_t dev, rev;
 uint32_t ef = 0;

 soc_id(&dev, &rev);

 switch (dev) {
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
  __asm __volatile("mrc p15, 1, %0, c15, c1, 0" : "=r" (ef));
  break;
 case 134:
 case 133:
  __asm __volatile("mrc p15, 0, %0, c14, c0, 0" : "=r" (ef));
  break;
 default:
  if (bootverbose)
   printf("This ARM Core does not support any extra features\n");
 }

 return (ef);
}
