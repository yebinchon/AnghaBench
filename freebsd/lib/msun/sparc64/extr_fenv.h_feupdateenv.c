
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;
typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int __ldxfsr (int const) ;
 int __stxfsr (int*) ;
 int feraiseexcept (int) ;

inline int
feupdateenv(const fenv_t *__envp)
{
 fexcept_t __r;

 __stxfsr(&__r);
 __ldxfsr(*__envp);
 feraiseexcept(__r & FE_ALL_EXCEPT);
 return (0);
}
