
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int base; int nCells; int sp; } ;
struct TYPE_6__ {TYPE_2__* pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_STACK ;


 int STKDEPTH (TYPE_2__*) ;
 int vmThrowErr (TYPE_1__*,char*) ;

void vmCheckStack(FICL_VM *pVM, int popCells, int pushCells)
{
    FICL_STACK *pStack = pVM->pStack;
    int nFree = pStack->base + pStack->nCells - pStack->sp;

    if (popCells > STKDEPTH(pStack))
    {
        vmThrowErr(pVM, "Error: stack underflow");
    }

    if (nFree < pushCells - popCells)
    {
        vmThrowErr(pVM, "Error: stack overflow");
    }

    return;
}
