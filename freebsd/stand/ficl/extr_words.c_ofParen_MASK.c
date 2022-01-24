#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ u; } ;
struct TYPE_6__ {scalar_t__ ip; int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  scalar_t__ FICL_UNS ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
	FICL_UNS a, b;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 2, 1);
#endif

	a = FUNC0();
	b = FUNC2(pVM->pStack).u;

    if (a == b)
    {                           /* fall through */
		FUNC1(pVM->pStack, 1);
        FUNC3(pVM, 1);
    }
    else 
    {                           /* take branch to next of or endswitch */
        FUNC3(pVM, *(int *)(pVM->ip));
    }

    return;
}