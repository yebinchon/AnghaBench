
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pFrame; int sp; } ;
typedef TYPE_1__ FICL_STACK ;


 int stackPopPtr (TYPE_1__*) ;

void stackUnlink(FICL_STACK *pStack)
{
    pStack->sp = pStack->pFrame;
    pStack->pFrame = stackPopPtr(pStack);
    return;
}
