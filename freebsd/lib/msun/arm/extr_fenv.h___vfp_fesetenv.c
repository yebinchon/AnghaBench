
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int vmsr_fpscr (int const) ;

inline int
fesetenv(const fenv_t *__envp)
{

 vmsr_fpscr(*__envp);
 return (0);
}
