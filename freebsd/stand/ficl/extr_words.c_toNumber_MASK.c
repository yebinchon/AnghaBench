#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ base; int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  scalar_t__ FICL_UNS ;
typedef  int /*<<< orphan*/  DPUNS ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 char FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC9(FICL_VM *pVM)
{
    FICL_UNS count;
    char *cp;
    DPUNS accum;
    FICL_UNS base = pVM->base;
    FICL_UNS ch;
    FICL_UNS digit;

#if FICL_ROBUST > 1
    vmCheckStack(pVM,4,4);
#endif

    count = FUNC1();
    cp = (char *)FUNC0();
    accum = FUNC6(pVM->pStack);

    for (ch = *cp; count > 0; ch = *++cp, count--)
    {
        if (ch < '0')
            break;

        digit = ch - '0';

        if (digit > 9)
            digit = FUNC5(ch) - 'a' + 10;
        /* 
        ** Note: following test also catches chars between 9 and a
        ** because 'digit' is unsigned! 
        */
        if (digit >= base)
            break;

        accum = FUNC4(accum, base, digit);
    }

    FUNC7(pVM->pStack, accum);
    FUNC2(cp);
    FUNC3(count);

    return;
}