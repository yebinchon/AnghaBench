
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int _ROUND_MASK ;
 int _ROUND_SHIFT ;
 int __stxfsr (int*) ;

inline int
fegetround(void)
{
 fenv_t __r;

 __stxfsr(&__r);
 return ((__r >> _ROUND_SHIFT) & _ROUND_MASK);
}
