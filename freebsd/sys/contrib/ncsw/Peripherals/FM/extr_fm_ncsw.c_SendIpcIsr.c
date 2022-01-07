
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_9__ {int msgBody; int msgId; } ;
typedef TYPE_2__ t_FmIpcMsg ;
struct TYPE_10__ {size_t pendingReg; int boolErr; } ;
typedef TYPE_3__ t_FmIpcIsr ;
struct TYPE_11__ {scalar_t__ guestId; TYPE_1__* intrMng; scalar_t__* h_IpcSessions; } ;
typedef TYPE_4__ t_Fm ;
typedef scalar_t__ t_Error ;
typedef int msg ;
typedef int fmIpcIsr ;
struct TYPE_8__ {scalar_t__ guestId; int h_SrcHandle; int (* f_Isr ) (int ) ;} ;


 int ASSERT_COND (int) ;
 int DBG (int ,char*) ;
 scalar_t__ E_OK ;
 int FALSE ;
 int FM_GUEST_ISR ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,int ) ;
 int TRACE ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,int *,int,int *,int *,int *,int *) ;
 int memcpy (int ,TYPE_3__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void SendIpcIsr(t_Fm *p_Fm, uint32_t macEvent, uint32_t pendingReg)
{
    ASSERT_COND(p_Fm->guestId == NCSW_MASTER_ID);

    if (p_Fm->intrMng[macEvent].guestId == NCSW_MASTER_ID)
        p_Fm->intrMng[macEvent].f_Isr(p_Fm->intrMng[macEvent].h_SrcHandle);



    else if (p_Fm->h_IpcSessions[p_Fm->intrMng[macEvent].guestId])
    {
        t_Error err;
        t_FmIpcIsr fmIpcIsr;
        t_FmIpcMsg msg;

        memset(&msg, 0, sizeof(msg));
        msg.msgId = FM_GUEST_ISR;
        fmIpcIsr.pendingReg = pendingReg;
        fmIpcIsr.boolErr = FALSE;
        memcpy(msg.msgBody, &fmIpcIsr, sizeof(fmIpcIsr));
        err = XX_IpcSendMessage(p_Fm->h_IpcSessions[p_Fm->intrMng[macEvent].guestId],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId) + sizeof(fmIpcIsr),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0));
        if (err != E_OK)
            REPORT_ERROR(MINOR, err, NO_MSG);
    }
    else
        DBG(TRACE, ("FM Guest mode, without IPC - can't call ISR!"));
}
