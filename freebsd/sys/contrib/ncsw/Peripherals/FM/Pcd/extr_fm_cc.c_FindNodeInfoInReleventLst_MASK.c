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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  t_List ;
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__ h_CcNode; } ;
typedef  TYPE_1__ t_CcNodeInformation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

t_CcNodeInformation* FUNC6(t_List *p_List, t_Handle h_Info,
                                               t_Handle h_Spinlock)
{
    t_CcNodeInformation *p_CcInformation;
    t_List *p_Pos;
    uint32_t intFlags;

    intFlags = FUNC4(h_Spinlock);

    for (p_Pos = FUNC2(p_List); p_Pos != (p_List);
            p_Pos = FUNC3(p_Pos))
    {
        p_CcInformation = FUNC1(p_Pos);

        FUNC0(p_CcInformation->h_CcNode);

        if (p_CcInformation->h_CcNode == h_Info)
        {
            FUNC5(h_Spinlock, intFlags);
            return p_CcInformation;
        }
    }

    FUNC5(h_Spinlock, intFlags);

    return NULL;
}