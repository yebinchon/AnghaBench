#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  quot; int /*<<< orphan*/  rem; } ;
typedef  TYPE_1__ UNSQR ;
struct TYPE_6__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_2__ FICL_VM ;
typedef  int /*<<< orphan*/  FICL_UNS ;
typedef  int /*<<< orphan*/  DPUNS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(FICL_VM *pVM)
{
    DPUNS ud;
    FICL_UNS u1;
    UNSQR qr;

    u1    = FUNC2(pVM->pStack);
    ud    = FUNC3(pVM->pStack);
    qr    = FUNC1(ud, u1);
    FUNC0(qr.rem);
    FUNC0(qr.quot);
    return;
}