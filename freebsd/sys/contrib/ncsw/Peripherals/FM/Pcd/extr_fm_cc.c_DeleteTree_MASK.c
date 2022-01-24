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
struct TYPE_4__ {int /*<<< orphan*/  fmPortsLst; scalar_t__ ccTreeBaseAddr; } ;
typedef  TYPE_1__ t_FmPcdCcTree ;
typedef  int /*<<< orphan*/  t_FmPcd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(t_FmPcdCcTree *p_FmPcdTree, t_FmPcd *p_FmPcd)
{
    if (p_FmPcdTree)
    {
        if (p_FmPcdTree->ccTreeBaseAddr)
        {
            FUNC0(FUNC1(p_FmPcd),
                             FUNC3(p_FmPcdTree->ccTreeBaseAddr));
            p_FmPcdTree->ccTreeBaseAddr = 0;
        }

        FUNC2(&p_FmPcdTree->fmPortsLst);

        FUNC4(p_FmPcdTree);
    }
}