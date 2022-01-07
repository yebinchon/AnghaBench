
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int __control; } ;
typedef TYPE_1__ fenv_t ;
typedef int __uint32_t ;


 scalar_t__ __HAS_SSE () ;
 int __fldcw (int *) ;
 int __fnstenv (TYPE_1__*) ;
 int __set_mxcsr (TYPE_1__,int ) ;
 int __stmxcsr (int *) ;

int
fegetenv(fenv_t *envp)
{
 __uint32_t mxcsr;

 __fnstenv(envp);




 __fldcw(&envp->__control);
 if (__HAS_SSE()) {
  __stmxcsr(&mxcsr);
  __set_mxcsr(*envp, mxcsr);
 }
 return (0);
}
