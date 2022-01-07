
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {int msgBody; int msgId; } ;
typedef TYPE_1__ t_FmIpcMsg ;
struct TYPE_7__ {int enableEvents; int eventRegId; } ;
typedef TYPE_2__ t_FmIpcFmanEvents ;
struct TYPE_8__ {scalar_t__ guestId; struct fman_fpm_regs* p_FmFpmRegs; scalar_t__* h_IpcSessions; } ;
typedef TYPE_3__ t_Fm ;
typedef scalar_t__ t_Error ;
struct fman_fpm_regs {int dummy; } ;
typedef int msg ;
typedef int fmanCtrl ;


 int ASSERT_COND (int) ;
 scalar_t__ E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 int FM_NUM_OF_FMAN_CTRL_EVENT_REGS ;
 int FM_SET_FMAN_CTRL_EVENTS_ENABLE ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,int *,int,int *,int *,int *,int *) ;
 int fman_set_ctrl_intr (struct fman_fpm_regs*,int ,int ) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void FmSetFmanCtrlIntr(t_Handle h_Fm, uint8_t eventRegId, uint32_t enableEvents)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    struct fman_fpm_regs *fpm_rg = p_Fm->p_FmFpmRegs;

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        !p_Fm->p_FmFpmRegs &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcFmanEvents fmanCtrl;
        t_Error err;
        t_FmIpcMsg msg;

        fmanCtrl.eventRegId = eventRegId;
        fmanCtrl.enableEvents = enableEvents;
        memset(&msg, 0, sizeof(msg));
        msg.msgId = FM_SET_FMAN_CTRL_EVENTS_ENABLE;
        memcpy(msg.msgBody, &fmanCtrl, sizeof(fmanCtrl));
        err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId)+sizeof(fmanCtrl),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0));
        if (err != E_OK)
            REPORT_ERROR(MINOR, err, NO_MSG);
        return;
    }
    else if (!p_Fm->p_FmFpmRegs)
    {
        REPORT_ERROR(MINOR, E_NOT_SUPPORTED,
                     ("Either IPC or 'baseAddress' is required!"));
        return;
    }

    ASSERT_COND(eventRegId < FM_NUM_OF_FMAN_CTRL_EVENT_REGS);
    fman_set_ctrl_intr(fpm_rg, eventRegId, enableEvents);
}
