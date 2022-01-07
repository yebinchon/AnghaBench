
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int FE_ALL_EXCEPT ;
 int vmrs_fpscr (int ) ;
 int vmsr_fpscr (int ) ;

inline int
feholdexcept(fenv_t *__envp)
{
 fenv_t __env;

 vmrs_fpscr(__env);
 *__envp = __env;
 __env &= ~(FE_ALL_EXCEPT);
 vmsr_fpscr(__env);
 return (0);
}
