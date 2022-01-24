#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {TYPE_4__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef  TYPE_1__ t_FmPcd ;
typedef  scalar_t__ t_Error ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_7__ {struct fman_kg_regs* p_FmPcdKgRegs; } ;

/* Variables and functions */
 scalar_t__ E_OK ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fman_kg_regs*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static t_Error FUNC8(t_FmPcd *p_FmPcd, uint8_t hardwarePortId, uint32_t spReg, bool add)
{
    struct fman_kg_regs *p_KgRegs;

    uint32_t                tmpKgarReg = 0, intFlags;
    t_Error                 err = E_OK;

    /* The calling routine had locked the port, so for each port only one core can access
     * (so we don't need a lock here) */

    if (p_FmPcd->h_Hc)
        return FUNC0(p_FmPcd->h_Hc, hardwarePortId, spReg, add);

    p_KgRegs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;

    tmpKgarReg = FUNC1(hardwarePortId);
    /* lock a common KG reg */
    intFlags = FUNC3(p_FmPcd->p_FmPcdKg);
    err = FUNC6(p_FmPcd, tmpKgarReg);
    if (err)
    {
        FUNC4(p_FmPcd->p_FmPcdKg, intFlags);
        FUNC5(MINOR, err, NO_MSG);
    }

    FUNC7(p_KgRegs, spReg, add);

    tmpKgarReg = FUNC2(hardwarePortId);

    err = FUNC6(p_FmPcd, tmpKgarReg);
    FUNC4(p_FmPcd->p_FmPcdKg, intFlags);
    return err;
}