
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int _ROUND_MASK ;
 int vmrs_fpscr (int) ;
 int vmsr_fpscr (int) ;

inline int
fesetround(int __round)
{
 fenv_t __fpsr;

 vmrs_fpscr(__fpsr);
 __fpsr &= ~(_ROUND_MASK);
 __fpsr |= __round;
 vmsr_fpscr(__fpsr);
 return (0);
}
