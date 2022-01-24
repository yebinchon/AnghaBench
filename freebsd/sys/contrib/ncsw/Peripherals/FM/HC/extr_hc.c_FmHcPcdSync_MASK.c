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
struct TYPE_5__ {void* commandSequence; scalar_t__ extraReg; scalar_t__ actionReg; void* opcode; } ;
typedef  TYPE_1__ t_HcFrame ;
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
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,void**) ; 
 int HC_HCOR_GBL ; 
 int HC_HCOR_OPCODE_SYNC ; 
 int /*<<< orphan*/  MINOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC7(t_Handle h_FmHc)
{
    t_FmHc                  *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame               *p_HcFrame;
    t_DpaaFD                fmFd;
    t_Error                 err = E_OK;
    uint32_t                seqNum;

    FUNC0(p_FmHc);

    p_HcFrame = FUNC3(p_FmHc, &seqNum);
    if (!p_HcFrame)
        FUNC5(MINOR, E_NO_MEMORY, ("HC Frame object"));
    FUNC6(p_HcFrame, 0, sizeof(t_HcFrame));
    /* first read SP register */
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_SYNC);
    p_HcFrame->actionReg = 0;
    p_HcFrame->extraReg = 0;
    p_HcFrame->commandSequence = seqNum;

    FUNC1(sizeof(t_HcFrame));

    err = FUNC2(p_FmHc, &fmFd, seqNum);

    FUNC4(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        FUNC5(MINOR, err, NO_MSG);

    return E_OK;
}