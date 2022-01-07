
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int sp; } ;
typedef TYPE_1__ FICL_STACK ;



void stackReset(FICL_STACK *pStack)
{
    pStack->sp = pStack->base;
    return;
}
