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
struct TYPE_6__ {int /*<<< orphan*/  pCompile; } ;
struct TYPE_5__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(FICL_VM *pVM)
{
    FUNC0(TRUE);
    FUNC1(pVM->pStack, FUNC2(pVM)->pCompile);
    FUNC0(FALSE);
    return;
}