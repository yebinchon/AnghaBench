
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; int lo; } ;
typedef int FICL_STACK ;
typedef TYPE_1__ DPINT ;


 int stackPushINT (int *,int ) ;

void i64Push(FICL_STACK *pStack, DPINT i64)
{
    stackPushINT(pStack, i64.lo);
    stackPushINT(pStack, i64.hi);
    return;
}
