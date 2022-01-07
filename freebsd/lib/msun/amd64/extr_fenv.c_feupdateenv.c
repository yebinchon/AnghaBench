
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;
typedef int __uint32_t ;
typedef int __uint16_t ;


 int FE_ALL_EXCEPT ;
 int __fnstsw (int*) ;
 int __stmxcsr (int*) ;
 int feraiseexcept (int) ;
 int fesetenv (int const*) ;

int
feupdateenv(const fenv_t *envp)
{
 __uint32_t mxcsr;
 __uint16_t status;

 __fnstsw(&status);
 __stmxcsr(&mxcsr);
 fesetenv(envp);
 feraiseexcept((mxcsr | status) & FE_ALL_EXCEPT);
 return (0);
}
