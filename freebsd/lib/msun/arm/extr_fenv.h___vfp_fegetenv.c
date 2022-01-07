
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int vmrs_fpscr (int ) ;

inline int
fegetenv(fenv_t *__envp)
{

 vmrs_fpscr(*__envp);
 return (0);
}
