
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int _ENABLE_MASK ;
 int __ldxfsr (int) ;
 int __stxfsr (int*) ;

inline int
feholdexcept(fenv_t *__envp)
{
 fenv_t __r;

 __stxfsr(&__r);
 *__envp = __r;
 __r &= ~(FE_ALL_EXCEPT | _ENABLE_MASK);
 __ldxfsr(__r);
 return (0);
}
