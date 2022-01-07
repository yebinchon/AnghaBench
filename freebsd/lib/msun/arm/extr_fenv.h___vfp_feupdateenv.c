
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fexcept_t ;
typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int feraiseexcept (int) ;
 int vmrs_fpscr (int) ;
 int vmsr_fpscr (int const) ;

inline int
feupdateenv(const fenv_t *__envp)
{
 fexcept_t __fpsr;

 vmrs_fpscr(__fpsr);
 vmsr_fpscr(*__envp);
 feraiseexcept(__fpsr & FE_ALL_EXCEPT);
 return (0);
}
