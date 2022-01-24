#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/ * fmpl_pmr; } ;
typedef  TYPE_2__ t_FmPcdPlcrRegs ;
struct TYPE_11__ {int guestId; int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_3__ t_FmPcdIpcMsg ;
struct TYPE_12__ {scalar_t__ guestId; scalar_t__ h_IpcSession; TYPE_1__* p_FmPcdPlcr; } ;
typedef  TYPE_4__ t_FmPcd ;
typedef  TYPE_3__ t_FmIpcResourceAllocParams ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_9__ {TYPE_2__* p_FmPcdPlcrRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_NOT_SUPPORTED ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FM_PCD_CLEAR_PORT_PROFILES ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC7(t_FmPcd *p_FmPcd, uint8_t hardwarePortId)
{
    t_FmPcdPlcrRegs *p_Regs = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;

    if ((p_FmPcd->guestId != NCSW_MASTER_ID) &&
        !p_Regs &&
        p_FmPcd->h_IpcSession)
    {
        t_FmIpcResourceAllocParams      ipcAllocParams;
        t_FmPcdIpcMsg                   msg;
        t_Error                         err;

        FUNC6(&msg, 0, sizeof(msg));
        FUNC6(&ipcAllocParams, 0, sizeof(t_FmIpcResourceAllocParams));
        ipcAllocParams.guestId         = hardwarePortId;
        msg.msgId                              = FM_PCD_CLEAR_PORT_PROFILES;
        FUNC5(msg.msgBody, &ipcAllocParams, sizeof(t_FmIpcResourceAllocParams));
        err = FUNC4(p_FmPcd->h_IpcSession,
                                (uint8_t*)&msg,
                                sizeof(msg.msgId) + sizeof(t_FmIpcResourceAllocParams),
                                NULL,
                                NULL,
                                NULL,
                                NULL);
        if (err != E_OK)
            FUNC2(MAJOR, err, NO_MSG);
        return E_OK;
    }
    else if (!p_Regs)
        FUNC2(MINOR, E_NOT_SUPPORTED,
                     ("Either IPC or 'baseAddress' is required!"));

    FUNC0(FUNC1(1, hardwarePortId, 63));
    FUNC3(p_Regs->fmpl_pmr[hardwarePortId-1], 0);

    return E_OK;
}