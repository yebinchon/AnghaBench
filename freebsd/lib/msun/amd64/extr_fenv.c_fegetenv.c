
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int __control; } ;
struct TYPE_4__ {TYPE_3__ __x87; int __mxcsr; } ;
typedef TYPE_1__ fenv_t ;


 int __fldcw (int *) ;
 int __fnstenv (TYPE_3__*) ;
 int __stmxcsr (int *) ;

int
fegetenv(fenv_t *envp)
{

 __fnstenv(&envp->__x87);
 __stmxcsr(&envp->__mxcsr);




 __fldcw(&envp->__x87.__control);
 return (0);
}
