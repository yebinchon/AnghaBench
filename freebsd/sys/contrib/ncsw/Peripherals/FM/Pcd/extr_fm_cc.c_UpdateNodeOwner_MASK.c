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
struct TYPE_4__ {int /*<<< orphan*/  h_Spinlock; struct TYPE_4__* owners; } ;
typedef  TYPE_1__ t_FmPcdCcNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(t_FmPcdCcNode *p_CcNode, bool add)
{
    uint32_t intFlags;

    FUNC0(p_CcNode);

    intFlags = FUNC1(p_CcNode->h_Spinlock);

    if (add)
        p_CcNode->owners++;
    else
    {
        FUNC0(p_CcNode->owners);
        p_CcNode->owners--;
    }

    FUNC2(p_CcNode->h_Spinlock, intFlags);
}