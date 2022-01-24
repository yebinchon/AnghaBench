#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ guestId; int exceptions; TYPE_1__* p_FmPcdKg; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_2__ t_FmPcd ;
typedef  scalar_t__ t_Error ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  schemesIds; scalar_t__ numOfSchemes; struct fman_kg_regs* p_FmPcdKgRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ E_OK ; 
 int FM_EX_KG_DOUBLE_ECC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  PcdKgErrorException ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  e_FM_MOD_KG ; 
 int /*<<< orphan*/  FUNC6 (struct fman_kg_regs*) ; 
 int /*<<< orphan*/  FUNC7 (struct fman_kg_regs*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC8(t_FmPcd *p_FmPcd)
{
    t_Error                     err = E_OK;
    struct fman_kg_regs         *p_Regs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;

    FUNC0(p_FmPcd->guestId == NCSW_MASTER_ID);

    if (p_FmPcd->exceptions & FM_EX_KG_DOUBLE_ECC)
        FUNC1(p_FmPcd->h_Fm);

    FUNC7(p_Regs, p_FmPcd->exceptions, FUNC4(p_FmPcd));

    /* register even if no interrupts enabled, to allow future enablement */
    FUNC3(p_FmPcd->h_Fm,
                   e_FM_MOD_KG,
                   0,
                   e_FM_INTR_TYPE_ERR,
                   PcdKgErrorException,
                   p_FmPcd);

    FUNC6(p_Regs);

    if (p_FmPcd->p_FmPcdKg->numOfSchemes)
    {
        err = FUNC2(p_FmPcd,
                                  p_FmPcd->p_FmPcdKg->numOfSchemes,
                                  p_FmPcd->guestId,
                                  p_FmPcd->p_FmPcdKg->schemesIds);
        if (err)
            FUNC5(MINOR, err, NO_MSG);
    }

    return E_OK;
}