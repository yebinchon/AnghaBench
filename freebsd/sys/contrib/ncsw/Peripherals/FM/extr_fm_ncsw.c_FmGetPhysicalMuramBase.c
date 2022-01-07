
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_8__ {int low; scalar_t__ high; } ;
typedef TYPE_1__ t_FmPhysAddr ;
struct TYPE_9__ {int replyBody; int msgId; } ;
typedef TYPE_2__ t_FmIpcReply ;
struct TYPE_10__ {int low; scalar_t__ high; } ;
typedef TYPE_3__ t_FmIpcPhysAddr ;
typedef TYPE_2__ t_FmIpcMsg ;
struct TYPE_11__ {int fmMuramPhysBaseAddr; scalar_t__ guestId; scalar_t__* h_IpcSessions; } ;
typedef TYPE_5__ t_Fm ;
typedef scalar_t__ t_Error ;
typedef int reply ;
typedef int msg ;


 int ASSERT_COND (int) ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 int FM_GET_PHYS_MURAM_BASE ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,scalar_t__*,int,scalar_t__*,int*,int *,int *) ;
 int memcpy (scalar_t__*,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;

void FmGetPhysicalMuramBase(t_Handle h_Fm, t_FmPhysAddr *p_FmPhysAddr)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    if (p_Fm->fmMuramPhysBaseAddr)
    {

        p_FmPhysAddr->low = (uint32_t)p_Fm->fmMuramPhysBaseAddr;
        p_FmPhysAddr->high = (uint8_t)((p_Fm->fmMuramPhysBaseAddr & 0x000000ff00000000LL) >> 32);
        return;
    }

    ASSERT_COND(p_Fm->guestId != NCSW_MASTER_ID);

    if (p_Fm->h_IpcSessions[0])
    {
        t_Error err;
        t_FmIpcMsg msg;
        t_FmIpcReply reply;
        uint32_t replyLength;
        t_FmIpcPhysAddr ipcPhysAddr;

        memset(&msg, 0, sizeof(msg));
        memset(&reply, 0, sizeof(reply));
        msg.msgId = FM_GET_PHYS_MURAM_BASE;
        replyLength = sizeof(uint32_t) + sizeof(t_FmPhysAddr);
        err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId),
                                (uint8_t*)&reply,
                                &replyLength,
                                ((void*)0),
                                ((void*)0));
        if (err != E_OK)
        {
            REPORT_ERROR(MINOR, err, NO_MSG);
            return;
        }
        if (replyLength != (sizeof(uint32_t) + sizeof(t_FmPhysAddr)))
        {
            REPORT_ERROR(MINOR, E_INVALID_VALUE,("IPC reply length mismatch"));
            return;
        }
        memcpy((uint8_t*)&ipcPhysAddr, reply.replyBody, sizeof(t_FmIpcPhysAddr));
        p_FmPhysAddr->high = ipcPhysAddr.high;
        p_FmPhysAddr->low = ipcPhysAddr.low;
    }
    else
        REPORT_ERROR(MINOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without neither IPC nor mapped register!"));
}
