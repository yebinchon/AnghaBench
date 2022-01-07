
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int __mxcsr; int __x87; } ;
typedef TYPE_1__ fenv_t ;
typedef int __uint32_t ;


 int FE_ALL_EXCEPT ;
 int _SSE_EMASK_SHIFT ;
 int __fnclex () ;
 int __fnstenv (int *) ;
 int __ldmxcsr (int*) ;
 int __stmxcsr (int*) ;

int
feholdexcept(fenv_t *envp)
{
 __uint32_t mxcsr;

 __stmxcsr(&mxcsr);
 __fnstenv(&envp->__x87);
 __fnclex();
 envp->__mxcsr = mxcsr;
 mxcsr &= ~FE_ALL_EXCEPT;
 mxcsr |= FE_ALL_EXCEPT << _SSE_EMASK_SHIFT;
 __ldmxcsr(&mxcsr);
 return (0);
}
