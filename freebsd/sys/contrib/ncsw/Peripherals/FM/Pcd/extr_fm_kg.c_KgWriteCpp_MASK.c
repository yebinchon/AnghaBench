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
typedef  int /*<<< orphan*/  t_Error ;
struct fman_kg_regs {int dummy; } ;
struct TYPE_7__ {struct fman_kg_regs* p_FmPcdKgRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fman_kg_regs*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC6(t_FmPcd *p_FmPcd, uint8_t hardwarePortId, uint32_t cppReg)
{
    struct fman_kg_regs    *p_KgRegs;
    uint32_t                tmpKgarReg, intFlags;
    t_Error                 err;

    p_KgRegs = p_FmPcd->p_FmPcdKg->p_FmPcdKgRegs;

    if (p_FmPcd->h_Hc)
    {
        err = FUNC0(p_FmPcd->h_Hc, hardwarePortId, cppReg);
        return err;
    }

    intFlags = FUNC2(p_FmPcd->p_FmPcdKg);
    FUNC5(p_KgRegs, cppReg);
    tmpKgarReg = FUNC1(hardwarePortId);
    err = FUNC4(p_FmPcd, tmpKgarReg);
    FUNC3(p_FmPcd->p_FmPcdKg, intFlags);

    return err;
}