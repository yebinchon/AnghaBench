
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {int congestionGroupId; int msgBody; int msgId; int priorityBitMap; } ;
typedef TYPE_1__ t_FmIpcSetCongestionGroupPfcPriority ;
typedef TYPE_1__ t_FmIpcMsg ;
struct TYPE_7__ {scalar_t__ guestId; scalar_t__* h_IpcSessions; scalar_t__ baseAddr; } ;
typedef TYPE_3__ t_Fm ;
typedef scalar_t__ t_Error ;
typedef int msg ;


 int ASSERT_COND (scalar_t__) ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 scalar_t__ FM_MM_CGP ;
 int FM_PORT_NUM_OF_CONGESTION_GRPS ;
 int FM_SET_CONG_GRP_PFC_PRIO ;
 int MAJOR ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,int *,int,int *,int *,int *,int *) ;
 int fman_set_congestion_group_pfc_priority (int*,int,int ,int) ;
 int memcpy (int ,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

t_Error FmSetCongestionGroupPFCpriority(t_Handle h_Fm,
                                        uint32_t congestionGroupId,
                                        uint8_t priorityBitMap)
{
    t_Fm *p_Fm = (t_Fm *)h_Fm;
    uint32_t regNum;

    ASSERT_COND(h_Fm);

    if (congestionGroupId > FM_PORT_NUM_OF_CONGESTION_GRPS)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("Congestion group ID bigger than %d",
                      FM_PORT_NUM_OF_CONGESTION_GRPS));

    if (p_Fm->guestId == NCSW_MASTER_ID)
    {
        ASSERT_COND(p_Fm->baseAddr);
        regNum = (FM_PORT_NUM_OF_CONGESTION_GRPS - 1 - congestionGroupId) / 4;
        fman_set_congestion_group_pfc_priority((uint32_t *)((p_Fm->baseAddr+FM_MM_CGP)),
                                               congestionGroupId,
                                               priorityBitMap,
                                               regNum);
    }
    else if (p_Fm->h_IpcSessions[0])
    {
        t_Error err;
        t_FmIpcMsg msg;
        t_FmIpcSetCongestionGroupPfcPriority fmIpcSetCongestionGroupPfcPriority;

        memset(&msg, 0, sizeof(msg));
        memset(&fmIpcSetCongestionGroupPfcPriority, 0, sizeof(t_FmIpcSetCongestionGroupPfcPriority));
        fmIpcSetCongestionGroupPfcPriority.congestionGroupId = congestionGroupId;
        fmIpcSetCongestionGroupPfcPriority.priorityBitMap = priorityBitMap;

        msg.msgId = FM_SET_CONG_GRP_PFC_PRIO;
        memcpy(msg.msgBody, &fmIpcSetCongestionGroupPfcPriority, sizeof(t_FmIpcSetCongestionGroupPfcPriority));

        err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0));
        if (err != E_OK)
            RETURN_ERROR(MINOR, err, NO_MSG);
    }
    else
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("guest without IPC!"));

    return E_OK;
}
