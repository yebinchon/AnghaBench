#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {void* fmpl_perrpc; void* fmpl_perypc; void* fmpl_perpc; void* fmpl_peypc; void* fmpl_pegpc; } ;
struct TYPE_8__ {TYPE_1__ profileRegs; } ;
struct TYPE_9__ {int extraReg; TYPE_2__ hcSpecificData; void* commandSequence; int /*<<< orphan*/  actionReg; void* opcode; } ;
typedef  TYPE_3__ t_HcFrame ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmHc ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  t_DpaaFD ;
typedef  int e_FmPcdPlcrProfileCounters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_SELECTION ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int HC_HCOR_GBL ; 
 int HC_HCOR_OPCODE_PLCR_PRFL ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC ; 
#define  e_FM_PCD_PLCR_PROFILE_GREEN_PACKET_TOTAL_COUNTER 132 
#define  e_FM_PCD_PLCR_PROFILE_RECOLOURED_RED_PACKET_TOTAL_COUNTER 131 
#define  e_FM_PCD_PLCR_PROFILE_RECOLOURED_YELLOW_PACKET_TOTAL_COUNTER 130 
#define  e_FM_PCD_PLCR_PROFILE_RED_PACKET_TOTAL_COUNTER 129 
#define  e_FM_PCD_PLCR_PROFILE_YELLOW_PACKET_TOTAL_COUNTER 128 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

uint32_t FUNC9(t_Handle h_FmHc, t_Handle h_Profile, e_FmPcdPlcrProfileCounters counter)
{
    t_FmHc      *p_FmHc = (t_FmHc*)h_FmHc;
    uint16_t    absoluteProfileId = FUNC3(h_Profile);
    t_Error     err;
    t_HcFrame   *p_HcFrame;
    t_DpaaFD    fmFd;
    uint32_t    retVal = 0;
    uint32_t    seqNum;

    FUNC7(h_FmHc, E_INVALID_HANDLE,0);

    /* first read scheme and check that it is valid */
    p_HcFrame = FUNC4(p_FmHc, &seqNum);
    if (!p_HcFrame)
    {
        FUNC6(MINOR, E_NO_MEMORY, ("HC Frame object"));
        return 0;
    }
    FUNC8(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_PLCR_PRFL);
    p_HcFrame->actionReg  = FUNC2(absoluteProfileId);
    p_HcFrame->extraReg = 0x00008000;
    p_HcFrame->commandSequence = seqNum;

    FUNC0(SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC);

    err = FUNC1(p_FmHc, &fmFd, seqNum);
    if (err != E_OK)
    {
        FUNC5(p_FmHc, p_HcFrame, seqNum);
        FUNC6(MINOR, err, NO_MSG);
        return 0;
    }

    switch (counter)
    {
        case e_FM_PCD_PLCR_PROFILE_GREEN_PACKET_TOTAL_COUNTER:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_pegpc;
            break;
        case e_FM_PCD_PLCR_PROFILE_YELLOW_PACKET_TOTAL_COUNTER:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_peypc;
            break;
        case e_FM_PCD_PLCR_PROFILE_RED_PACKET_TOTAL_COUNTER:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_perpc;
            break;
        case e_FM_PCD_PLCR_PROFILE_RECOLOURED_YELLOW_PACKET_TOTAL_COUNTER:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_perypc;
            break;
        case e_FM_PCD_PLCR_PROFILE_RECOLOURED_RED_PACKET_TOTAL_COUNTER:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_perrpc;
            break;
        default:
            FUNC6(MAJOR, E_INVALID_SELECTION, NO_MSG);
    }

    FUNC5(p_FmHc, p_HcFrame, seqNum);
    return retVal;
}