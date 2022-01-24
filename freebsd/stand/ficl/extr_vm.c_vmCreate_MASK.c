#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  textOut; void* fStack; void* rStack; void* pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ficlTextOut ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

FICL_VM *FUNC6(FICL_VM *pVM, unsigned nPStack, unsigned nRStack)
{
    if (pVM == NULL)
    {
        pVM = (FICL_VM *)FUNC1(sizeof (FICL_VM));
        FUNC0 (pVM);
        FUNC2(pVM, 0, sizeof (FICL_VM));
    }

    if (pVM->pStack)
        FUNC4(pVM->pStack);
    pVM->pStack = FUNC3(nPStack);

    if (pVM->rStack)
        FUNC4(pVM->rStack);
    pVM->rStack = FUNC3(nRStack);

#if FICL_WANT_FLOAT
    if (pVM->fStack)
        stackDelete(pVM->fStack);
    pVM->fStack = stackCreate(nPStack);
#endif

    pVM->textOut = ficlTextOut;

    FUNC5(pVM);
    return pVM;
}