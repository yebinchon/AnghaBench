
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; int lo; } ;
typedef int FICL_STACK ;
typedef TYPE_1__ DPUNS ;


 int stackPushINT (int *,int ) ;

void u64Push(FICL_STACK *pStack, DPUNS u64)
{
    stackPushINT(pStack, u64.lo);
    stackPushINT(pStack, u64.hi);
    return;
}
