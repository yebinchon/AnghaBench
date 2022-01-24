#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_10__ {int /*<<< orphan*/  error; int /*<<< orphan*/  replyBody; int /*<<< orphan*/  msgId; } ;
typedef  TYPE_1__ t_FmIpcReply ;
typedef  TYPE_1__ t_FmIpcMsg ;
struct TYPE_11__ {void* minorRev; void* majorRev; scalar_t__ packageRev; } ;
typedef  TYPE_3__ t_FmIpcFmanCtrlCodeRevisionInfo ;
struct TYPE_12__ {scalar_t__ guestId; void* minorRev; void* majorRev; scalar_t__ packageRev; scalar_t__ baseAddr; scalar_t__* h_IpcSessions; } ;
typedef  TYPE_4__ t_FmCtrlCodeRevisionInfo ;
typedef  TYPE_4__ t_Fm ;
struct TYPE_13__ {int /*<<< orphan*/  idata; int /*<<< orphan*/  iadd; } ;
typedef  TYPE_6__ t_FMIramRegs ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 int /*<<< orphan*/  E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  E_NULL_POINTER ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FM_GET_FMAN_CTRL_CODE_REV ; 
 scalar_t__ FM_MM_IMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void**,int,void**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC8(t_Handle h_Fm, t_FmCtrlCodeRevisionInfo *p_RevisionInfo)
{
    t_Fm                            *p_Fm = (t_Fm*)h_Fm;
    t_FMIramRegs                    *p_Iram;
    uint32_t                        revInfo;

    FUNC2(p_Fm, E_INVALID_HANDLE);
    FUNC2(p_RevisionInfo, E_NULL_POINTER);

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        p_Fm->h_IpcSessions[0])
    {
        t_Error                         err;
        t_FmIpcMsg                      msg;
        t_FmIpcReply                    reply;
        uint32_t                        replyLength;
        t_FmIpcFmanCtrlCodeRevisionInfo ipcRevInfo;

        FUNC7(&msg, 0, sizeof(msg));
        FUNC7(&reply, 0, sizeof(reply));
        msg.msgId = FM_GET_FMAN_CTRL_CODE_REV;
        replyLength = sizeof(uint32_t) + sizeof(t_FmCtrlCodeRevisionInfo);
        if ((err = FUNC5(p_Fm->h_IpcSessions[0],
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     NULL,
                                     NULL)) != E_OK)
            FUNC1(MINOR, err, NO_MSG);
        if (replyLength != (sizeof(uint32_t) + sizeof(t_FmCtrlCodeRevisionInfo)))
            FUNC1(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        FUNC6((uint8_t*)&ipcRevInfo, reply.replyBody, sizeof(t_FmCtrlCodeRevisionInfo));
        p_RevisionInfo->packageRev = ipcRevInfo.packageRev;
        p_RevisionInfo->majorRev = ipcRevInfo.majorRev;
        p_RevisionInfo->minorRev = ipcRevInfo.minorRev;
        return (t_Error)(reply.error);
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        FUNC1(MINOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without IPC!"));

    p_Iram = (t_FMIramRegs *)FUNC3(p_Fm->baseAddr + FM_MM_IMEM);
    FUNC4(p_Iram->iadd, 0x4);
    while (FUNC0(p_Iram->iadd) != 0x4) ;
    revInfo = FUNC0(p_Iram->idata);
    p_RevisionInfo->packageRev = (uint16_t)((revInfo & 0xFFFF0000) >> 16);
    p_RevisionInfo->majorRev = (uint8_t)((revInfo & 0x0000FF00) >> 8);
    p_RevisionInfo->minorRev = (uint8_t)(revInfo & 0x000000FF);

    return E_OK;
}