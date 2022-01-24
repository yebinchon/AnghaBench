#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  t_List ;
typedef  int /*<<< orphan*/  t_CcNodeInformation ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(t_List *p_List)
{
    t_CcNodeInformation *p_CcNodeInfo = NULL;

    if (!FUNC2(p_List))
    {
        p_CcNodeInfo = FUNC0(p_List);
        while (p_CcNodeInfo)
        {
            FUNC3(p_CcNodeInfo);
            p_CcNodeInfo = FUNC0(p_List);
        }
    }

    FUNC1(p_List);
}