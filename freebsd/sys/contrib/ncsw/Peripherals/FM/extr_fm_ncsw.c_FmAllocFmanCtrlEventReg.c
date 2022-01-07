
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {int error; scalar_t__ replyBody; int msgId; } ;
typedef TYPE_1__ t_FmIpcReply ;
typedef TYPE_1__ t_FmIpcMsg ;
struct TYPE_7__ {scalar_t__ guestId; scalar_t__* usedEventRegs; scalar_t__* h_IpcSessions; } ;
typedef TYPE_3__ t_Fm ;
typedef int t_Error ;
typedef int reply ;
typedef int msg ;


 int E_BUSY ;
 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int FM_ALLOC_FMAN_CTRL_EVENT_REG ;
 size_t FM_NUM_OF_FMAN_CTRL_EVENT_REGS ;
 int MAJOR ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_3__*,int ) ;
 scalar_t__ TRUE ;
 int XX_IpcSendMessage (scalar_t__,size_t*,int,size_t*,int*,int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;

t_Error FmAllocFmanCtrlEventReg(t_Handle h_Fm, uint8_t *p_EventId)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    uint8_t i;

    SANITY_CHECK_RETURN_ERROR(p_Fm, E_INVALID_HANDLE);

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        p_Fm->h_IpcSessions[0])
    {
        t_Error err;
        t_FmIpcMsg msg;
        t_FmIpcReply reply;
        uint32_t replyLength;

        memset(&msg, 0, sizeof(msg));
        memset(&reply, 0, sizeof(reply));
        msg.msgId = FM_ALLOC_FMAN_CTRL_EVENT_REG;
        replyLength = sizeof(uint32_t) + sizeof(uint8_t);
        if ((err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     ((void*)0),
                                     ((void*)0))) != E_OK)
            RETURN_ERROR(MAJOR, err, NO_MSG);

        if (replyLength != (sizeof(uint32_t) + sizeof(uint8_t)))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));

        *p_EventId = *(uint8_t*)(reply.replyBody);

        return (t_Error)(reply.error);
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(MINOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without IPC!"));

    for (i=0;i<FM_NUM_OF_FMAN_CTRL_EVENT_REGS;i++)
        if (!p_Fm->usedEventRegs[i])
        {
            p_Fm->usedEventRegs[i] = TRUE;
            *p_EventId = i;
            break;
        }

    if (i==FM_NUM_OF_FMAN_CTRL_EVENT_REGS)
        RETURN_ERROR(MAJOR, E_BUSY, ("No resource - FMan controller event register."));

    return E_OK;
}
