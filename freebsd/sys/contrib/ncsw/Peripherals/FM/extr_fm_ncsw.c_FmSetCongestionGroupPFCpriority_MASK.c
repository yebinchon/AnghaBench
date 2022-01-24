#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_6__ {int congestionGroupId; int /*<<< orphan*/  msgBody; int /*<<< orphan*/  msgId; int /*<<< orphan*/  priorityBitMap; } ;
typedef  TYPE_1__ t_FmIpcSetCongestionGroupPfcPriority ;
typedef  TYPE_1__ t_FmIpcMsg ;
struct TYPE_7__ {scalar_t__ guestId; scalar_t__* h_IpcSessions; scalar_t__ baseAddr; } ;
typedef  TYPE_3__ t_Fm ;
typedef  scalar_t__ t_Error ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ E_INVALID_STATE ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_OK ; 
 scalar_t__ FM_MM_CGP ; 
 int FM_PORT_NUM_OF_CONGESTION_GRPS ; 
 int /*<<< orphan*/  FM_SET_CONG_GRP_PFC_PRIO ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NCSW_MASTER_ID ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Error FUNC6(t_Handle    h_Fm,
                                        uint32_t    congestionGroupId,
                                        uint8_t     priorityBitMap)
{
    t_Fm    *p_Fm  = (t_Fm *)h_Fm;
    uint32_t regNum;

    FUNC0(h_Fm);

    if (congestionGroupId > FM_PORT_NUM_OF_CONGESTION_GRPS)
        FUNC1(MAJOR, E_INVALID_VALUE,
                     ("Congestion group ID bigger than %d",
                      FM_PORT_NUM_OF_CONGESTION_GRPS));

    if (p_Fm->guestId == NCSW_MASTER_ID)
    {
        FUNC0(p_Fm->baseAddr);
        regNum = (FM_PORT_NUM_OF_CONGESTION_GRPS - 1 - congestionGroupId) / 4;
        FUNC3((uint32_t *)((p_Fm->baseAddr+FM_MM_CGP)),
                                               congestionGroupId,
                                               priorityBitMap,
                                               regNum);
    }
    else if (p_Fm->h_IpcSessions[0])
    {
        t_Error                              err;
        t_FmIpcMsg                           msg;
        t_FmIpcSetCongestionGroupPfcPriority fmIpcSetCongestionGroupPfcPriority;

        FUNC5(&msg, 0, sizeof(msg));
        FUNC5(&fmIpcSetCongestionGroupPfcPriority, 0, sizeof(t_FmIpcSetCongestionGroupPfcPriority));
        fmIpcSetCongestionGroupPfcPriority.congestionGroupId = congestionGroupId;
        fmIpcSetCongestionGroupPfcPriority.priorityBitMap    = priorityBitMap;

        msg.msgId = FM_SET_CONG_GRP_PFC_PRIO;
        FUNC4(msg.msgBody, &fmIpcSetCongestionGroupPfcPriority, sizeof(t_FmIpcSetCongestionGroupPfcPriority));

        err = FUNC2(p_Fm->h_IpcSessions[0],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId),
                                NULL,
                                NULL,
                                NULL,
                                NULL);
        if (err != E_OK)
            FUNC1(MINOR, err, NO_MSG);
    }
    else
        FUNC1(MAJOR, E_INVALID_STATE, ("guest without IPC!"));

    return E_OK;
}