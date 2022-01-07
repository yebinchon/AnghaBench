
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;


 int const FE_ALL_EXCEPT ;
 int const _ENABLE_MASK ;
 int const _ROUND_MASK ;
 int const _ROUND_SHIFT ;
 int __msr_fpcr (int const) ;
 int __msr_fpsr (int const) ;

inline int
fesetenv(const fenv_t *__envp)
{

 __msr_fpcr((*__envp) & _ENABLE_MASK);
 __msr_fpsr((*__envp) & (FE_ALL_EXCEPT | (_ROUND_MASK << _ROUND_SHIFT)));
 return (0);
}
