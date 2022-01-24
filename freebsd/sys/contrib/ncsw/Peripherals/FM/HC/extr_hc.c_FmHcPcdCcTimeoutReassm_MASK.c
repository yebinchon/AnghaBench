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
typedef  scalar_t__ uint8_t ;
typedef  void* uint32_t ;
struct TYPE_7__ {int actionReg; int extraReg; void* commandSequence; void* opcode; } ;
typedef  TYPE_1__ t_HcFrame ;
typedef  scalar_t__ t_Handle ;
struct TYPE_8__ {int tsbs; int iprcpt; scalar_t__ activate; } ;
typedef  TYPE_2__ t_FmPcdCcReassmTimeoutParams ;
typedef  int /*<<< orphan*/  t_FmHc ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  t_DpaaFD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,void**) ; 
 int HC_HCOR_ACTION_REG_REASSM_TIMEOUT_ACTIVE_SHIFT ; 
 int HC_HCOR_ACTION_REG_REASSM_TIMEOUT_RES_MASK ; 
 int HC_HCOR_ACTION_REG_REASSM_TIMEOUT_RES_SHIFT ; 
 int HC_HCOR_EXTRA_REG_REASSM_TIMEOUT_TSBS_SHIFT ; 
 int HC_HCOR_GBL ; 
 int HC_HCOR_OPCODE_CC_REASSM_TIMEOUT ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC7(t_Handle h_FmHc, t_FmPcdCcReassmTimeoutParams *p_CcReassmTimeoutParams, uint8_t *p_Result)
{
    t_FmHc                              *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame                           *p_HcFrame;
    t_DpaaFD                            fmFd;
    t_Error                             err;
    uint32_t                            seqNum;

    FUNC5(h_FmHc, E_INVALID_HANDLE,0);

    p_HcFrame = FUNC2(p_FmHc, &seqNum);
    if (!p_HcFrame)
        FUNC4(MINOR, E_NO_MEMORY, ("HC Frame object"));

    FUNC6(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_CC_REASSM_TIMEOUT);
    p_HcFrame->actionReg = (uint32_t)((p_CcReassmTimeoutParams->activate ? 0 : 1) << HC_HCOR_ACTION_REG_REASSM_TIMEOUT_ACTIVE_SHIFT);
    p_HcFrame->extraReg = (p_CcReassmTimeoutParams->tsbs << HC_HCOR_EXTRA_REG_REASSM_TIMEOUT_TSBS_SHIFT) | p_CcReassmTimeoutParams->iprcpt;
    p_HcFrame->commandSequence = seqNum;

    FUNC0(sizeof(t_HcFrame));
    if ((err = FUNC1(p_FmHc, &fmFd, seqNum)) != E_OK)
    {
        FUNC3(p_FmHc, p_HcFrame, seqNum);
        FUNC4(MINOR, err, NO_MSG);
    }

    *p_Result = (uint8_t)
        ((p_HcFrame->actionReg >> HC_HCOR_ACTION_REG_REASSM_TIMEOUT_RES_SHIFT) & HC_HCOR_ACTION_REG_REASSM_TIMEOUT_RES_MASK);

    FUNC3(p_FmHc, p_HcFrame, seqNum);
    return E_OK;
}