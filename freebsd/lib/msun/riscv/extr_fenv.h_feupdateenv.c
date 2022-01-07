
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;
typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int __rfs (int) ;
 int __wfs (int const) ;
 int feraiseexcept (int) ;

inline int
feupdateenv(const fenv_t *__envp)
{
 fexcept_t __fcsr;

 __rfs(__fcsr);
 __wfs(*__envp);
 feraiseexcept(__fcsr & FE_ALL_EXCEPT);

 return (0);
}
