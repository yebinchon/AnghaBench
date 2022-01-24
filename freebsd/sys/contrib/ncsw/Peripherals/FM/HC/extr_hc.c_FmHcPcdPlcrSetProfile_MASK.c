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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  profileRegs; } ;
struct TYPE_7__ {int extraReg; void* commandSequence; TYPE_1__ hcSpecificData; int /*<<< orphan*/  actionReg; void* opcode; } ;
typedef  TYPE_2__ t_HcFrame ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdPlcrProfileRegs ;
typedef  int /*<<< orphan*/  t_FmHc ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  t_DpaaFD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int HC_HCOR_GBL ; 
 int HC_HCOR_OPCODE_PLCR_PRFL ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC9(t_Handle h_FmHc, t_Handle h_Profile, t_FmPcdPlcrProfileRegs *p_PlcrRegs)
{
    t_FmHc                              *p_FmHc = (t_FmHc*)h_FmHc;
    t_Error                             err = E_OK;
    uint16_t                            profileIndx;
    t_HcFrame                           *p_HcFrame;
    t_DpaaFD                            fmFd;
    uint32_t                            seqNum;

    p_HcFrame = FUNC4(p_FmHc, &seqNum);
    if (!p_HcFrame)
        FUNC6(MINOR, E_NO_MEMORY, ("HC Frame object"));

    profileIndx = FUNC3(h_Profile);

    FUNC8(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_PLCR_PRFL);
    p_HcFrame->actionReg  = FUNC2(profileIndx);
    p_HcFrame->extraReg = 0x00008000;
    FUNC7(&p_HcFrame->hcSpecificData.profileRegs, p_PlcrRegs, sizeof(t_FmPcdPlcrProfileRegs));
    p_HcFrame->commandSequence = seqNum;

    FUNC0(sizeof(t_HcFrame));

    err = FUNC1(p_FmHc, &fmFd, seqNum);

    FUNC5(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        FUNC6(MINOR, err, NO_MSG);

    return E_OK;
}