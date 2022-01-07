
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;
typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int _ENABLE_MASK ;
 int __cfc1 (int) ;
 int __ctc1 (int) ;

inline int
feholdexcept(fenv_t *__envp)
{
 fexcept_t fcsr;

 __cfc1(fcsr);
 *__envp = fcsr;
 fcsr &= ~(FE_ALL_EXCEPT | _ENABLE_MASK);
 __ctc1(fcsr);

 return (0);
}
