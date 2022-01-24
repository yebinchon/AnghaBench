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
struct TYPE_6__ {void* singleRegForWrite; } ;
struct TYPE_7__ {int extraReg; void* commandSequence; TYPE_1__ hcSpecificData; int /*<<< orphan*/  actionReg; void* opcode; } ;
typedef  TYPE_2__ t_HcFrame ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmHc ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  t_DpaaFD ;
typedef  int /*<<< orphan*/  e_FmPcdPlcrProfileCounters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,void**) ; 
 int HC_HCOR_GBL ; 
 int HC_HCOR_OPCODE_PLCR_PRFL ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  SIZE_OF_HC_FRAME_PROFILE_CNT ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

t_Error  FUNC9(t_Handle h_FmHc, t_Handle h_Profile, e_FmPcdPlcrProfileCounters counter, uint32_t value)
{

    t_FmHc      *p_FmHc = (t_FmHc*)h_FmHc;
    uint16_t    absoluteProfileId = FUNC4(h_Profile);
    t_Error     err = E_OK;
    t_HcFrame   *p_HcFrame;
    t_DpaaFD    fmFd;
    uint32_t    seqNum;

    /* first read scheme and check that it is valid */
    p_HcFrame = FUNC5(p_FmHc, &seqNum);
    if (!p_HcFrame)
        FUNC7(MINOR, E_NO_MEMORY, ("HC Frame object"));
    FUNC8(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_PLCR_PRFL);
    p_HcFrame->actionReg  = FUNC3(absoluteProfileId);
    p_HcFrame->actionReg |= FUNC2(counter);
    p_HcFrame->extraReg = 0x00008000;
    p_HcFrame->hcSpecificData.singleRegForWrite = value;
    p_HcFrame->commandSequence = seqNum;

    FUNC0(SIZE_OF_HC_FRAME_PROFILE_CNT);

    err = FUNC1(p_FmHc, &fmFd, seqNum);

    FUNC6(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        FUNC7(MINOR, err, NO_MSG);

    return E_OK;
}