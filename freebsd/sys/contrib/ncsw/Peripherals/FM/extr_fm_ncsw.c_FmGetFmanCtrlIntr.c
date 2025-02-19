
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {int replyBody; int * msgBody; int msgId; } ;
typedef TYPE_1__ t_FmIpcReply ;
typedef TYPE_1__ t_FmIpcMsg ;
struct TYPE_6__ {scalar_t__ guestId; struct fman_fpm_regs* p_FmFpmRegs; scalar_t__* h_IpcSessions; } ;
typedef TYPE_3__ t_Fm ;
typedef scalar_t__ t_Error ;
struct fman_fpm_regs {int dummy; } ;
typedef int reply ;
typedef int msg ;
typedef int eventRegId ;


 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 int FM_GET_FMAN_CTRL_EVENTS_ENABLE ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,int *,int,int *,int*,int *,int *) ;
 int fman_get_ctrl_intr (struct fman_fpm_regs*,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

uint32_t FmGetFmanCtrlIntr(t_Handle h_Fm, uint8_t eventRegId)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    struct fman_fpm_regs *fpm_rg = p_Fm->p_FmFpmRegs;

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        !p_Fm->p_FmFpmRegs &&
        p_Fm->h_IpcSessions[0])
    {
        t_Error err;
        t_FmIpcMsg msg;
        t_FmIpcReply reply;
        uint32_t replyLength, ctrlIntr;

        memset(&msg, 0, sizeof(msg));
        memset(&reply, 0, sizeof(reply));
        msg.msgId = FM_GET_FMAN_CTRL_EVENTS_ENABLE;
        msg.msgBody[0] = eventRegId;
        replyLength = sizeof(uint32_t) + sizeof(uint32_t);
        err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId)+sizeof(eventRegId),
                                (uint8_t*)&reply,
                                &replyLength,
                                ((void*)0),
                                ((void*)0));
        if (err != E_OK)
        {
            REPORT_ERROR(MINOR, err, NO_MSG);
            return 0;
        }
        if (replyLength != (sizeof(uint32_t) + sizeof(uint32_t)))
        {
            REPORT_ERROR(MINOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
            return 0;
        }
        memcpy((uint8_t*)&ctrlIntr, reply.replyBody, sizeof(uint32_t));
        return ctrlIntr;
    }
    else if (!p_Fm->p_FmFpmRegs)
    {
        REPORT_ERROR(MINOR, E_NOT_SUPPORTED,
                     ("Either IPC or 'baseAddress' is required!"));
        return 0;
    }

    return fman_get_ctrl_intr(fpm_rg, eventRegId);
}
