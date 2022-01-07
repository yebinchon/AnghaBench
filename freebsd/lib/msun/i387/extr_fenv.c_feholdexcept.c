
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fenv_t ;
typedef int __uint32_t ;


 int FE_ALL_EXCEPT ;
 int _SSE_EMASK_SHIFT ;
 scalar_t__ __HAS_SSE () ;
 int __fnclex () ;
 int __fnstenv (int *) ;
 int __ldmxcsr (int*) ;
 int __set_mxcsr (int ,int) ;
 int __stmxcsr (int*) ;

int
feholdexcept(fenv_t *envp)
{
 __uint32_t mxcsr;

 __fnstenv(envp);
 __fnclex();
 if (__HAS_SSE()) {
  __stmxcsr(&mxcsr);
  __set_mxcsr(*envp, mxcsr);
  mxcsr &= ~FE_ALL_EXCEPT;
  mxcsr |= FE_ALL_EXCEPT << _SSE_EMASK_SHIFT;
  __ldmxcsr(&mxcsr);
 }
 return (0);
}
