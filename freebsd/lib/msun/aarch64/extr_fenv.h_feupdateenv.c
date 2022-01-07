
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;
typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int __mrs_fpsr (int) ;
 int feraiseexcept (int) ;
 int fesetenv (int const*) ;

inline int
feupdateenv(const fenv_t *__envp)
{
 fexcept_t __r;

 __mrs_fpsr(__r);
 fesetenv(__envp);
 feraiseexcept(__r & FE_ALL_EXCEPT);
 return (0);
}
