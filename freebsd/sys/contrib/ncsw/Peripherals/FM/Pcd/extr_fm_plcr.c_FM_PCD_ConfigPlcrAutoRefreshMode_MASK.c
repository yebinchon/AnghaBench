#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {int plcrAutoRefresh; struct TYPE_3__* p_FmPcdDriverParam; int /*<<< orphan*/  h_Fm; struct TYPE_3__* p_FmPcdPlcr; } ;
typedef  TYPE_1__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

t_Error FUNC3(t_Handle h_FmPcd, bool enable)
{
   t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    FUNC2(p_FmPcd, E_INVALID_HANDLE);
    FUNC2(p_FmPcd->p_FmPcdDriverParam, E_INVALID_HANDLE);
    FUNC2(p_FmPcd->p_FmPcdPlcr, E_INVALID_HANDLE);

    if (!FUNC0(p_FmPcd->h_Fm))
        FUNC1(MAJOR, E_NOT_SUPPORTED, ("FM_PCD_ConfigPlcrAutoRefreshMode - guest mode!"));

    p_FmPcd->p_FmPcdDriverParam->plcrAutoRefresh = enable;

    return E_OK;
}