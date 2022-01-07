
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* lo; void* hi; } ;
typedef int FICL_STACK ;
typedef TYPE_1__ DPUNS ;


 void* stackPopINT (int *) ;

DPUNS u64Pop(FICL_STACK *pStack)
{
    DPUNS ret;
    ret.hi = stackPopINT(pStack);
    ret.lo = stackPopINT(pStack);
    return ret;
}
