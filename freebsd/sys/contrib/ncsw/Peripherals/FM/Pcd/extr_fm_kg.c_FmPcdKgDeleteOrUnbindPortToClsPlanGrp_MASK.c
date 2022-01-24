#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_11__ {int /*<<< orphan*/  numOfClsPlanEntries; int /*<<< orphan*/  baseEntry; } ;
typedef  TYPE_2__ t_FmPcdKgInterModuleClsPlanSet ;
struct TYPE_12__ {int /*<<< orphan*/  sizeOfGrp; int /*<<< orphan*/  baseEntry; int /*<<< orphan*/  owners; } ;
typedef  TYPE_3__ t_FmPcdKgClsPlanGrp ;
struct TYPE_13__ {TYPE_1__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef  TYPE_4__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_10__ {TYPE_3__* clsPlanGrps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC9(t_Handle h_FmPcd, uint8_t hardwarePortId, uint8_t clsPlanGrpId)
{
    t_FmPcd                         *p_FmPcd = (t_FmPcd *)h_FmPcd;
    t_FmPcdKgClsPlanGrp             *p_ClsPlanGrp = &p_FmPcd->p_FmPcdKg->clsPlanGrps[clsPlanGrpId];
    t_FmPcdKgInterModuleClsPlanSet  *p_ClsPlanSet;
    t_Error                         err;

    /* This function is issued only from FM_PORT_DeletePcd which locked all PCD modules,
       so no need for lock here */

    FUNC5(p_FmPcd, hardwarePortId);

    /* decrement owners number */
    FUNC0(p_ClsPlanGrp->owners);
    p_ClsPlanGrp->owners--;

    if (!p_ClsPlanGrp->owners)
    {
        if (p_FmPcd->h_Hc)
        {
            err = FUNC1(p_FmPcd->h_Hc, clsPlanGrpId);
            return err;
        }
        else
        {
            /* clear clsPlan entries in memory */
            p_ClsPlanSet = (t_FmPcdKgInterModuleClsPlanSet *)FUNC7(sizeof(t_FmPcdKgInterModuleClsPlanSet));
            if (!p_ClsPlanSet)
            {
                FUNC4(MAJOR, E_NO_MEMORY, ("Classification plan set"));
            }
            FUNC8(p_ClsPlanSet, 0, sizeof(t_FmPcdKgInterModuleClsPlanSet));

            p_ClsPlanSet->baseEntry = p_FmPcd->p_FmPcdKg->clsPlanGrps[clsPlanGrpId].baseEntry;
            p_ClsPlanSet->numOfClsPlanEntries = p_FmPcd->p_FmPcdKg->clsPlanGrps[clsPlanGrpId].sizeOfGrp;
            FUNC3(p_FmPcd, p_ClsPlanSet);
            FUNC6(p_ClsPlanSet);

            FUNC2(h_FmPcd, clsPlanGrpId);
       }
    }
    return E_OK;
}