#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  t_List ;
typedef  scalar_t__ t_Handle ;
struct TYPE_6__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ t_CcNodeInformation ;

/* Variables and functions */
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC8(t_List *p_List, t_CcNodeInformation *p_CcInfo,
                                  t_Handle h_Spinlock)
{
    t_CcNodeInformation *p_CcInformation;
    uint32_t intFlags = 0;

    p_CcInformation = (t_CcNodeInformation *)FUNC4(
            sizeof(t_CcNodeInformation));

    if (p_CcInformation)
    {
        FUNC7(p_CcInformation, 0, sizeof(t_CcNodeInformation));
        FUNC6(p_CcInformation, p_CcInfo, sizeof(t_CcNodeInformation));
        FUNC0(&p_CcInformation->node);

        if (h_Spinlock)
            intFlags = FUNC3(h_Spinlock);

        FUNC1(&p_CcInformation->node, p_List);

        if (h_Spinlock)
            FUNC5(h_Spinlock, intFlags);
    }
    else
        FUNC2(MAJOR, E_NO_MEMORY, ("CC Node Information"));
}