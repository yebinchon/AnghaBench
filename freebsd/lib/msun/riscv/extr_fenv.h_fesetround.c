
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int _ROUND_MASK ;
 int __rfs (int) ;
 int __wfs (int) ;

inline int
fesetround(int __round)
{
 fexcept_t __fcsr;

 if (__round & ~_ROUND_MASK)
  return (-1);

 __rfs(__fcsr);
 __fcsr &= ~_ROUND_MASK;
 __fcsr |= __round;
 __wfs(__fcsr);

 return (0);
}
