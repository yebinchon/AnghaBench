
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int _ROUND_MASK ;
 int __cfc1 (int) ;
 int __ctc1 (int) ;

inline int
fesetround(int __round)
{
 fexcept_t fcsr;

 if (__round & ~_ROUND_MASK)
  return (-1);

 __cfc1(fcsr);
 fcsr &= ~_ROUND_MASK;
 fcsr |= __round;
 __ctc1(fcsr);

 return (0);
}
