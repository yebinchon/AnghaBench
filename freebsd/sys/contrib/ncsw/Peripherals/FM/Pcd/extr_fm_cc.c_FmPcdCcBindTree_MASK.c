#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {int /*<<< orphan*/  ccTreeBaseAddr; } ;
typedef  TYPE_1__ t_FmPcdCcTree ;
struct TYPE_5__ {scalar_t__ physicalMuramBase; } ;
typedef  TYPE_2__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

t_Error FUNC5(t_Handle h_FmPcd, t_Handle h_PcdParams,
                        t_Handle h_FmPcdCcTree, uint32_t *p_Offset,
                        t_Handle h_FmPort)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;
    t_Error err = E_OK;

    FUNC1(h_FmPcd, E_INVALID_HANDLE);
    FUNC1(h_FmPcdCcTree, E_INVALID_HANDLE);

    /* this routine must be protected by the calling routine by locking all PCD modules! */

    err = FUNC0(h_FmPcd, h_PcdParams, h_FmPort, h_FmPcdCcTree, TRUE);

    if (err == E_OK)
        FUNC3(p_FmPcdCcTree, TRUE);

    *p_Offset = (uint32_t)(FUNC4(
            FUNC2(p_FmPcdCcTree->ccTreeBaseAddr))
            - p_FmPcd->physicalMuramBase);

    return err;
}