
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pFrame; int sp; } ;
typedef TYPE_1__ FICL_STACK ;


 int stackPushPtr (TYPE_1__*,int) ;

void stackLink(FICL_STACK *pStack, int nCells)
{
    stackPushPtr(pStack, pStack->pFrame);
    pStack->pFrame = pStack->sp;
    pStack->sp += nCells;
    return;
}
