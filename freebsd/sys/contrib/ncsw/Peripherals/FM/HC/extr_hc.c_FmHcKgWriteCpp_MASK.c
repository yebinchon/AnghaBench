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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
struct TYPE_6__ {void* singleRegForWrite; } ;
struct TYPE_7__ {void* commandSequence; TYPE_1__ hcSpecificData; int /*<<< orphan*/  extraReg; int /*<<< orphan*/  actionReg; void* opcode; } ;
typedef  TYPE_2__ t_HcFrame ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmHc ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  t_DpaaFD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int HC_HCOR_GBL ; 
 int /*<<< orphan*/  HC_HCOR_KG_SCHEME_REGS_MASK ; 
 int HC_HCOR_OPCODE_KG_SCM ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC8(t_Handle h_FmHc, uint8_t hardwarePortId, uint32_t cppReg)
{
    t_FmHc                  *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame               *p_HcFrame;
    t_DpaaFD                fmFd;
    t_Error                 err = E_OK;
    uint32_t                seqNum;

    FUNC0(p_FmHc);

    p_HcFrame = FUNC4(p_FmHc, &seqNum);
    if (!p_HcFrame)
        FUNC6(MINOR, E_NO_MEMORY, ("HC Frame object"));
    FUNC7(p_HcFrame, 0, sizeof(t_HcFrame));
    /* first read SP register */
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_KG_SCM);
    p_HcFrame->actionReg  = FUNC3(hardwarePortId);
    p_HcFrame->extraReg = HC_HCOR_KG_SCHEME_REGS_MASK;
    p_HcFrame->hcSpecificData.singleRegForWrite = cppReg;
    p_HcFrame->commandSequence = seqNum;

    FUNC1(sizeof(t_HcFrame));

    err = FUNC2(p_FmHc, &fmFd, seqNum);

    FUNC5(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        FUNC6(MINOR, err, NO_MSG);

    return E_OK;
}