
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;


 int __ldxfsr (int) ;
 int __stxfsr (int*) ;

__inline int
feclearexcept(int __excepts)
{
 fexcept_t __r;

 __stxfsr(&__r);
 __r &= ~__excepts;
 __ldxfsr(__r);
 return (0);
}
