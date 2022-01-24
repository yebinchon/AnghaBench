#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  i; scalar_t__ p; } ;
struct TYPE_14__ {TYPE_4__* base; } ;
struct TYPE_13__ {char* pad; int /*<<< orphan*/  base; TYPE_3__* rStack; } ;
struct TYPE_12__ {char* name; TYPE_4__* param; } ;
typedef  TYPE_1__ FICL_WORD ;
typedef  TYPE_2__ FICL_VM ;
typedef  TYPE_3__ FICL_STACK ;
typedef  int /*<<< orphan*/  FICL_DICT ;
typedef  TYPE_4__ CELL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(FICL_VM *pVM)
{
    FICL_STACK *pStk = pVM->rStack;
    int d = FUNC4(pStk);
    int i;
    CELL *pCell;
    FICL_DICT *dp = FUNC6(pVM);

    FUNC5(pVM, 0, 0);

    if (d == 0)
        FUNC7(pVM, "(Stack Empty) ", 0);
    else
    {
        pCell = pStk->base;
        for (i = 0; i < d; i++)
        {
            CELL c = *pCell++;
            /*
            ** Attempt to find the word that contains the
            ** stacked address (as if it is part of a colon definition).
            ** If this works, print the name of the word. Otherwise print
            ** the value as a number.
            */
            if (FUNC0(dp, c.p))
            {
                FICL_WORD *pFW = FUNC1(pVM, c.p);
                if (pFW)
                {
                    int offset = (CELL *)c.p - &pFW->param[0];
                    FUNC3(pVM->pad, "%s+%d ", pFW->name, offset);
                    FUNC7(pVM, pVM->pad, 0);
                    continue;  /* no need to print the numeric value */
                }
            }
            FUNC7(pVM, FUNC2(c.i, pVM->pad, pVM->base), 0);
            FUNC7(pVM, " ", 0);
        }
    }

    return;
}