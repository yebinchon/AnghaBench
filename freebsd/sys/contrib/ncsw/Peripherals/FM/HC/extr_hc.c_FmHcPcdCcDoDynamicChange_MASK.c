#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_5__ {int actionReg; void* commandSequence; void* extraReg; void* opcode; } ;
typedef  TYPE_1__ t_HcFrame ;
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmHc ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  t_DpaaFD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,void**) ; 
 int HC_HCOR_GBL ; 
 int HC_HCOR_OPCODE_CC ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC7(t_Handle h_FmHc, uint32_t oldAdAddrOffset, uint32_t newAdAddrOffset)
{
    t_FmHc                  *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame               *p_HcFrame;
    t_DpaaFD                fmFd;
    t_Error                 err = E_OK;
    uint32_t                seqNum;

    FUNC5(p_FmHc, E_INVALID_HANDLE);

    p_HcFrame = FUNC2(p_FmHc, &seqNum);
    if (!p_HcFrame)
        FUNC4(MINOR, E_NO_MEMORY, ("HC Frame object"));
    FUNC6(p_HcFrame, 0, sizeof(t_HcFrame));

    p_HcFrame->opcode     = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_CC);
    p_HcFrame->actionReg  = newAdAddrOffset;
    p_HcFrame->actionReg |= 0xc0000000;
    p_HcFrame->extraReg   = oldAdAddrOffset;
    p_HcFrame->commandSequence = seqNum;

    FUNC0(SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC);

    err = FUNC1(p_FmHc, &fmFd, seqNum);

    FUNC3(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        FUNC4(MAJOR, err, NO_MSG);

    return E_OK;
}