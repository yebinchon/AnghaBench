
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int _ROUND_MASK ;
 int _ROUND_SHIFT ;
 int __ldxfsr (int) ;
 int __stxfsr (int*) ;

inline int
fesetround(int __round)
{
 fenv_t __r;

 if (__round & ~_ROUND_MASK)
  return (-1);
 __stxfsr(&__r);
 __r &= ~(_ROUND_MASK << _ROUND_SHIFT);
 __r |= __round << _ROUND_SHIFT;
 __ldxfsr(__r);
 return (0);
}
