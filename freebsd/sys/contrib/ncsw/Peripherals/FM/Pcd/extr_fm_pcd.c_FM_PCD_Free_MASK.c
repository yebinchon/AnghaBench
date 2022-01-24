#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_8__ {scalar_t__ guestId; scalar_t__ h_ShadowSpinlock; scalar_t__ h_Spinlock; int /*<<< orphan*/  h_Fm; int /*<<< orphan*/  fmPcdModuleName; int /*<<< orphan*/ * h_Hc; struct TYPE_8__* p_FmPcdPrs; struct TYPE_8__* p_FmPcdPlcr; struct TYPE_8__* p_FmPcdKg; struct TYPE_8__* p_FmPcdDriverParam; scalar_t__ enabled; scalar_t__ capwapFrameIdAddr; int /*<<< orphan*/  h_FmMuram; scalar_t__ ipv6FrameIdAddr; } ;
typedef  TYPE_1__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

t_Error FUNC13(t_Handle h_FmPcd)
{
    t_FmPcd                             *p_FmPcd =(t_FmPcd *)h_FmPcd;
    t_Error                             err = E_OK;

    if (p_FmPcd->ipv6FrameIdAddr)
        FUNC0(p_FmPcd->h_FmMuram, FUNC9(p_FmPcd->ipv6FrameIdAddr));

    if (p_FmPcd->capwapFrameIdAddr)
        FUNC0(p_FmPcd->h_FmMuram, FUNC9(p_FmPcd->capwapFrameIdAddr));

    if (p_FmPcd->enabled)
        FUNC1(p_FmPcd);

    if (p_FmPcd->p_FmPcdDriverParam)
    {
        FUNC10(p_FmPcd->p_FmPcdDriverParam);
        p_FmPcd->p_FmPcdDriverParam = NULL;
    }

    if (p_FmPcd->p_FmPcdKg)
    {
        if ((err = FUNC4(p_FmPcd)) != E_OK)
            FUNC7(MINOR, err, NO_MSG);
        FUNC10(p_FmPcd->p_FmPcdKg);
        p_FmPcd->p_FmPcdKg = NULL;
    }

    if (p_FmPcd->p_FmPcdPlcr)
    {
        FUNC5(p_FmPcd);
        FUNC10(p_FmPcd->p_FmPcdPlcr);
        p_FmPcd->p_FmPcdPlcr = NULL;
    }

    if (p_FmPcd->p_FmPcdPrs)
    {
        if (p_FmPcd->guestId == NCSW_MASTER_ID)
            FUNC6(p_FmPcd);
        FUNC10(p_FmPcd->p_FmPcdPrs);
        p_FmPcd->p_FmPcdPrs = NULL;
    }

    if (p_FmPcd->h_Hc)
    {
        FUNC2(p_FmPcd->h_Hc);
        p_FmPcd->h_Hc = NULL;
    }

    FUNC12(p_FmPcd->fmPcdModuleName);

    FUNC3(p_FmPcd->h_Fm);

    FUNC8(p_FmPcd);

    if (p_FmPcd->h_Spinlock)
        FUNC11(p_FmPcd->h_Spinlock);

    if (p_FmPcd->h_ShadowSpinlock)
        FUNC11(p_FmPcd->h_ShadowSpinlock);

    FUNC10(p_FmPcd);

    return E_OK;
}