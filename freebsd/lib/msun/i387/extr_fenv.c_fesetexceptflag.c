
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fexcept_t ;
struct TYPE_4__ {int __status; } ;
typedef TYPE_1__ fenv_t ;
typedef int __uint32_t ;


 scalar_t__ __HAS_SSE () ;
 int __fldenv (TYPE_1__*) ;
 int __fnstenv (TYPE_1__*) ;
 int __ldmxcsr (int*) ;
 int __stmxcsr (int*) ;

int
fesetexceptflag(const fexcept_t *flagp, int excepts)
{
 fenv_t env;
 __uint32_t mxcsr;

 __fnstenv(&env);
 env.__status &= ~excepts;
 env.__status |= *flagp & excepts;
 __fldenv(&env);

 if (__HAS_SSE()) {
  __stmxcsr(&mxcsr);
  mxcsr &= ~excepts;
  mxcsr |= *flagp & excepts;
  __ldmxcsr(&mxcsr);
 }

 return (0);
}
