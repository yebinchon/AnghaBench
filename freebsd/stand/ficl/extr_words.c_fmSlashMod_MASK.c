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
struct TYPE_7__ {int /*<<< orphan*/  pStack; } ;
struct TYPE_6__ {int /*<<< orphan*/  quot; int /*<<< orphan*/  rem; } ;
typedef  TYPE_1__ INTQR ;
typedef  TYPE_2__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_INT ;
typedef  int /*<<< orphan*/  DPINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    DPINT d1;
    FICL_INT n1;
    INTQR qr;
#if FICL_ROBUST > 1
    vmCheckStack(pVM,3,2);
#endif

    n1 = FUNC0();
    d1 = FUNC2(pVM->pStack);
    qr = FUNC3(d1, n1);
    FUNC1(qr.rem);
    FUNC1(qr.quot);
    return;
}