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
struct TYPE_4__ {struct TYPE_4__* owners; } ;
typedef  TYPE_1__ t_FmPcdCcTree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(t_FmPcdCcTree *p_FmPcdCcTree, bool add)
{
    FUNC0(p_FmPcdCcTree);

    /* this routine must be protected by the calling routine! */

    if (add)
        p_FmPcdCcTree->owners++;
    else
    {
        FUNC0(p_FmPcdCcTree->owners);
        p_FmPcdCcTree->owners--;
    }
}