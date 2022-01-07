
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;






 int _ROUND_MASK ;
 int __softfloat_float_rounding_mode ;

int
__flt_rounds(void)
{
 uint64_t mode;




 __asm __volatile("csrr %0, fcsr" : "=r" (mode));


 switch (mode & _ROUND_MASK) {
 case 129:
  return (0);
 case 130:
  return (1);
 case 128:
  return (2);
 case 131:
  return (3);
 }

 return (-1);
}
