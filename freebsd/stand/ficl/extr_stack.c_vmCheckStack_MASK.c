#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int base; int nCells; int sp; } ;
struct TYPE_6__ {TYPE_2__* pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ FICL_STACK ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 

void FUNC2(FICL_VM *pVM, int popCells, int pushCells)
{
    FICL_STACK *pStack = pVM->pStack;
    int nFree = pStack->base + pStack->nCells - pStack->sp;

    if (popCells > FUNC0(pStack))
    {
        FUNC1(pVM, "Error: stack underflow");
    }

    if (nFree < pushCells - popCells)
    {
        FUNC1(pVM, "Error: stack overflow");
    }

    return;
}