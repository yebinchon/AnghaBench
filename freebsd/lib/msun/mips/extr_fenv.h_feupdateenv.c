
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;
typedef int fenv_t ;


 int __cfc1 (int ) ;
 int feraiseexcept (int ) ;
 int fesetenv (int const*) ;

inline int
feupdateenv(const fenv_t *__envp)
{
 fexcept_t fcsr;

 __cfc1(fcsr);
 fesetenv(__envp);
 feraiseexcept(fcsr);

 return (0);
}
