
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sp; } ;
typedef TYPE_1__ FICL_STACK ;
typedef int CELL ;



void stackRoll(FICL_STACK *pStack, int n)
{
    CELL c;
    CELL *pCell;

    if (n == 0)
        return;
    else if (n > 0)
    {
        pCell = pStack->sp - n - 1;
        c = *pCell;

        for (;n > 0; --n, pCell++)
        {
            *pCell = pCell[1];
        }

        *pCell = c;
    }
    else
    {
        pCell = pStack->sp - 1;
        c = *pCell;

        for (; n < 0; ++n, pCell--)
        {
            *pCell = pCell[-1];
        }

        *pCell = c;
    }
    return;
}
