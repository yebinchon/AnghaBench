
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int _ROUND_MASK ;
 int vmrs_fpscr (int) ;

inline int
fegetround(void)
{
 fenv_t __fpsr;

 vmrs_fpscr(__fpsr);
 return (__fpsr & _ROUND_MASK);
}
