#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ i; } ;
struct TYPE_7__ {scalar_t__ i; } ;
struct TYPE_6__ {scalar_t__* ip; int /*<<< orphan*/  rStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  scalar_t__ FICL_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,uintptr_t) ; 

__attribute__((used)) static void FUNC6(FICL_VM *pVM)
{
    FICL_INT index = FUNC3(pVM->rStack).i;
    FICL_INT limit = FUNC2(pVM->rStack, 1).i;

    index++;

    if (index >= limit) 
    {
        FUNC1(pVM->rStack, 3); /* nuke the loop indices & "leave" addr */
        FUNC5(pVM, 1);  /* fall through the loop */
    }
    else 
    {                       /* update index, branch to loop head */
        FUNC4(pVM->rStack, FUNC0(index));
        FUNC5(pVM, (uintptr_t)*(pVM->ip));
    }

    return;
}