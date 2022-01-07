
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ROUND_MASK ;
 int __softfloat_float_rounding_mode ;

int
__flt_rounds(void)
{
 int mode;






 mode = __softfloat_float_rounding_mode;
 switch (mode) {
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
