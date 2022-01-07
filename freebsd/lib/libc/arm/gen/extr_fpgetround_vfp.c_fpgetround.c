
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fp_rnd_t ;



fp_rnd_t
fpgetround(void)
{
 uint32_t fpscr;

 __asm __volatile("vmrs %0, fpscr" : "=&r"(fpscr));

 return ((fpscr >> 22) & 3);
}
