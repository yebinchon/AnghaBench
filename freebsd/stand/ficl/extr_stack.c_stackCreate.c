
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int nCells; int * pFrame; int base; int sp; } ;
typedef TYPE_1__ FICL_STACK ;
typedef int CELL ;


 int assert (int) ;
 TYPE_1__* ficlMalloc (size_t) ;

FICL_STACK *stackCreate(unsigned nCells)
{
    size_t size = sizeof (FICL_STACK) + nCells * sizeof (CELL);
    FICL_STACK *pStack = ficlMalloc(size);






    pStack->nCells = nCells;
    pStack->sp = pStack->base;
    pStack->pFrame = ((void*)0);
    return pStack;
}
