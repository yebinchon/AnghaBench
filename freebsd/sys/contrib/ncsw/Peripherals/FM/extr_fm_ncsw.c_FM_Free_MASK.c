#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_2__* p_Code; } ;
struct TYPE_7__ {scalar_t__ guestId; scalar_t__* fmModuleName; scalar_t__ irq; scalar_t__ errIrq; struct TYPE_7__* p_FmStateStruct; int /*<<< orphan*/  recoveryMode; struct TYPE_7__* p_FmDriverParam; TYPE_1__ firmware; scalar_t__ h_Spinlock; struct TYPE_7__* p_FmSp; int /*<<< orphan*/  partNumOfVSPs; int /*<<< orphan*/  partVSPBase; int /*<<< orphan*/  p_FmDmaRegs; int /*<<< orphan*/  p_FmFpmRegs; int /*<<< orphan*/  p_FmQmiRegs; int /*<<< orphan*/  p_FmBmiRegs; } ;
typedef  TYPE_2__ t_Fm ;
typedef  int /*<<< orphan*/  t_Error ;
struct fman_rg {int /*<<< orphan*/  dma_rg; int /*<<< orphan*/  fpm_rg; int /*<<< orphan*/  qmi_rg; int /*<<< orphan*/  bmi_rg; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ NCSW_MASTER_ID ; 
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct fman_rg*) ; 

t_Error FUNC9(t_Handle h_Fm)
{
    t_Fm    *p_Fm = (t_Fm*)h_Fm;
    struct fman_rg          fman_rg;

    FUNC2(p_Fm, E_INVALID_HANDLE);

    fman_rg.bmi_rg = p_Fm->p_FmBmiRegs;
    fman_rg.qmi_rg = p_Fm->p_FmQmiRegs;
    fman_rg.fpm_rg = p_Fm->p_FmFpmRegs;
    fman_rg.dma_rg = p_Fm->p_FmDmaRegs;

    if (p_Fm->guestId != NCSW_MASTER_ID)
    {
#if (DPAA_VERSION >= 11)
        FreeVSPsForPartition(h_Fm, p_Fm->partVSPBase, p_Fm->partNumOfVSPs, p_Fm->guestId);

        if (p_Fm->p_FmSp)
        {
            XX_Free(p_Fm->p_FmSp);
            p_Fm->p_FmSp = NULL;
        }
#endif /* (DPAA_VERSION >= 11) */

        if (p_Fm->fmModuleName[0] != 0)
            FUNC7(p_Fm->fmModuleName);

        if (!p_Fm->recoveryMode)
            FUNC4(p_Fm->p_FmStateStruct);

        FUNC4(p_Fm);

        return E_OK;
    }

    FUNC8(&fman_rg);

    if ((p_Fm->guestId == NCSW_MASTER_ID) && (p_Fm->fmModuleName[0] != 0))
        FUNC7(p_Fm->fmModuleName);

    if (p_Fm->p_FmStateStruct)
    {
        if (p_Fm->p_FmStateStruct->irq != NO_IRQ)
        {
            FUNC3(p_Fm->p_FmStateStruct->irq);
            FUNC5(p_Fm->p_FmStateStruct->irq);
        }
        if (p_Fm->p_FmStateStruct->errIrq != NO_IRQ)
        {
            FUNC3(p_Fm->p_FmStateStruct->errIrq);
            FUNC5(p_Fm->p_FmStateStruct->errIrq);
        }
    }

#if (DPAA_VERSION >= 11)
    FreeVSPsForPartition(h_Fm, p_Fm->partVSPBase, p_Fm->partNumOfVSPs, p_Fm->guestId);

    if (p_Fm->p_FmSp)
    {
        XX_Free(p_Fm->p_FmSp);
        p_Fm->p_FmSp = NULL;
    }
#endif /* (DPAA_VERSION >= 11) */

    if (p_Fm->h_Spinlock)
        FUNC6(p_Fm->h_Spinlock);

    if (p_Fm->p_FmDriverParam)
    {
        if (p_Fm->firmware.p_Code)
            FUNC4(p_Fm->firmware.p_Code);
        FUNC4(p_Fm->p_FmDriverParam);
        p_Fm->p_FmDriverParam = NULL;
    }

    FUNC0(p_Fm);

    if (!p_Fm->recoveryMode && p_Fm->p_FmStateStruct)
        FUNC4(p_Fm->p_FmStateStruct);

    FUNC4(p_Fm);

    return E_OK;
}