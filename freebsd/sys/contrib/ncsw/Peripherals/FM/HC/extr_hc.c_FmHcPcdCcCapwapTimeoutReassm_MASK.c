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
typedef  void* uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  ccCapwapReassmTimeout; } ;
struct TYPE_7__ {void* commandSequence; TYPE_1__ hcSpecificData; void* opcode; } ;
typedef  TYPE_2__ t_HcFrame ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdCcCapwapReassmTimeoutParams ;
typedef  int /*<<< orphan*/  t_FmHc ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  t_DpaaFD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,void**) ; 
 int HC_HCOR_GBL ; 
 int HC_HCOR_OPCODE_CC_CAPWAP_REASSM_TIMEOUT ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC8(t_Handle h_FmHc, t_FmPcdCcCapwapReassmTimeoutParams *p_CcCapwapReassmTimeoutParams )
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

    FUNC7(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_CC_CAPWAP_REASSM_TIMEOUT);
    FUNC6(&p_HcFrame->hcSpecificData.ccCapwapReassmTimeout, p_CcCapwapReassmTimeoutParams, sizeof(t_FmPcdCcCapwapReassmTimeoutParams));
    p_HcFrame->commandSequence = seqNum;
    FUNC0(sizeof(t_HcFrame));

    err = FUNC1(p_FmHc, &fmFd, seqNum);

    FUNC3(p_FmHc, p_HcFrame, seqNum);
    return err;
}