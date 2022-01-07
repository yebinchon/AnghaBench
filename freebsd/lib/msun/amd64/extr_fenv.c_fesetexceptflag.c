
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fexcept_t ;
struct TYPE_5__ {int __status; } ;
struct TYPE_4__ {int __mxcsr; TYPE_2__ __x87; } ;
typedef TYPE_1__ fenv_t ;


 int __fldenv (TYPE_2__*) ;
 int __fnstenv (TYPE_2__*) ;
 int __ldmxcsr (int const*) ;
 int __stmxcsr (int*) ;

int
fesetexceptflag(const fexcept_t *flagp, int excepts)
{
 fenv_t env;

 __fnstenv(&env.__x87);
 env.__x87.__status &= ~excepts;
 env.__x87.__status |= *flagp & excepts;
 __fldenv(&env.__x87);

 __stmxcsr(&env.__mxcsr);
 env.__mxcsr &= ~excepts;
 env.__mxcsr |= *flagp & excepts;
 __ldmxcsr(&env.__mxcsr);

 return (0);
}
