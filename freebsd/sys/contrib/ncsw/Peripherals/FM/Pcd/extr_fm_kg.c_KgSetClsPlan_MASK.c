#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_9__ {int baseEntry; int numOfClsPlanEntries; int /*<<< orphan*/ * vectors; } ;
typedef  TYPE_2__ t_FmPcdKgInterModuleClsPlanSet ;
struct TYPE_10__ {TYPE_6__* p_FmPcdKg; int /*<<< orphan*/  h_Fm; } ;
typedef  TYPE_3__ t_FmPcd ;
struct fman_kg_cp_regs {int /*<<< orphan*/ * kgcpe; } ;
struct TYPE_11__ {TYPE_1__* p_IndirectAccessRegs; } ;
struct TYPE_8__ {struct fman_kg_cp_regs clsPlanRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CLS_PLAN_NUM_PER_GRP ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 scalar_t__ E_OK ; 
 scalar_t__ FM_PCD_MAX_NUM_OF_CLS_PLANS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC9(t_Handle h_FmPcd, t_FmPcdKgInterModuleClsPlanSet *p_Set)
{
    t_FmPcd                 *p_FmPcd = (t_FmPcd *)h_FmPcd;
    struct fman_kg_cp_regs  *p_FmPcdKgPortRegs;
    uint32_t                tmpKgarReg = 0, intFlags;
    uint16_t                i, j;

    /* This routine is protected by the calling routine ! */
    FUNC0(FUNC1(p_FmPcd->h_Fm));
    p_FmPcdKgPortRegs = &p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->clsPlanRegs;

    intFlags = FUNC4(p_FmPcd->p_FmPcdKg);
    for (i=p_Set->baseEntry;i<p_Set->baseEntry+p_Set->numOfClsPlanEntries;i+=8)
    {
        tmpKgarReg = FUNC2((uint8_t)(i / CLS_PLAN_NUM_PER_GRP));

        for (j = i; j < i+8; j++)
        {
            FUNC0(FUNC3(0, (j - p_Set->baseEntry), FM_PCD_MAX_NUM_OF_CLS_PLANS-1));
            FUNC7(p_FmPcdKgPortRegs->kgcpe[j % CLS_PLAN_NUM_PER_GRP],p_Set->vectors[j - p_Set->baseEntry]);
        }

        if (FUNC8(p_FmPcd, tmpKgarReg) != E_OK)
        {
            FUNC6(MAJOR, E_INVALID_STATE, ("WriteKgarWait FAILED"));
            FUNC5(p_FmPcd->p_FmPcdKg, intFlags);
            return;
        }
    }
    FUNC5(p_FmPcd->p_FmPcdKg, intFlags);
}