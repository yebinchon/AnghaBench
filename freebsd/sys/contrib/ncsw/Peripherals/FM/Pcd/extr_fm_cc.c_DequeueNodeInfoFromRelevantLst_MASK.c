#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  t_List ;
typedef  scalar_t__ t_Handle ;
struct TYPE_5__ {scalar_t__ h_CcNode; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ t_CcNodeInformation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC10(t_List *p_List, t_Handle h_Info,
                                    t_Handle h_Spinlock)
{
    t_CcNodeInformation *p_CcInformation = NULL;
    uint32_t intFlags = 0;
    t_List *p_Pos;

    if (h_Spinlock)
        intFlags = FUNC7(h_Spinlock);

    if (FUNC4(p_List))
    {
        FUNC8(intFlags);
        return;
    }

    for (p_Pos = FUNC3(p_List); p_Pos != (p_List);
            p_Pos = FUNC5(p_Pos))
    {
        p_CcInformation = FUNC1(p_Pos);
        FUNC0(p_CcInformation);
        FUNC0(p_CcInformation->h_CcNode);
        if (p_CcInformation->h_CcNode == h_Info)
            break;
    }

    if (p_CcInformation)
    {
        FUNC2(&p_CcInformation->node);
        FUNC6(p_CcInformation);
    }

    if (h_Spinlock)
        FUNC9(h_Spinlock, intFlags);
}