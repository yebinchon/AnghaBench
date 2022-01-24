#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ i; } ;
struct TYPE_10__ {scalar_t__ i; } ;
struct TYPE_9__ {scalar_t__ i; } ;
struct TYPE_8__ {scalar_t__* ip; int /*<<< orphan*/  rStack; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  scalar_t__ FICL_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_7__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_5__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,uintptr_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(FICL_VM *pVM)
{
    FICL_INT index,limit,increment;
    int flag;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 1, 0);
#endif

    index = FUNC4(pVM->rStack).i;
    limit = FUNC3(pVM->rStack, 1).i;
    increment = FUNC1().i;
    
    index += increment;

    if (increment < 0)
        flag = (index < limit);
    else
        flag = (index >= limit);

    if (flag) 
    {
        FUNC2(pVM->rStack, 3); /* nuke the loop indices & "leave" addr */
        FUNC6(pVM, 1);  /* fall through the loop */
    }
    else 
    {                       /* update index, branch to loop head */
        FUNC5(pVM->rStack, FUNC0(index));
        FUNC6(pVM, (uintptr_t)*(pVM->ip));
    }

    return;
}