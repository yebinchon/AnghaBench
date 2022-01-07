
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int t_Handle ;
struct TYPE_8__ {scalar_t__ guestId; scalar_t__ event; } ;
typedef TYPE_2__ t_FmIpcRegisterIntr ;
struct TYPE_9__ {int msgBody; int msgId; } ;
typedef TYPE_3__ t_FmIpcMsg ;
struct TYPE_10__ {scalar_t__ guestId; scalar_t__* h_IpcSessions; TYPE_1__* intrMng; } ;
typedef TYPE_4__ t_Fm ;
typedef scalar_t__ t_Error ;
typedef int msg ;
typedef int fmIpcRegisterIntr ;
typedef int e_FmIntrType ;
typedef int e_FmEventModules ;
struct TYPE_7__ {void (* f_Isr ) (int) ;int h_SrcHandle; } ;


 int ASSERT_COND (int) ;
 scalar_t__ E_NOT_SUPPORTED ;
 scalar_t__ E_OK ;
 int FM_REGISTER_INTR ;
 int GET_FM_MODULE_EVENT (int ,int ,int ,int) ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,int *,int,int *,int *,int *,int *) ;
 int e_FM_EV_DUMMY_LAST ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

void FmRegisterIntr(t_Handle h_Fm,
                    e_FmEventModules module,
                    uint8_t modId,
                    e_FmIntrType intrType,
                    void (*f_Isr) (t_Handle h_Arg),
                    t_Handle h_Arg)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    int event = 0;

    ASSERT_COND(h_Fm);

    GET_FM_MODULE_EVENT(module, modId, intrType, event);
    ASSERT_COND(event < e_FM_EV_DUMMY_LAST);


    p_Fm->intrMng[event].f_Isr = f_Isr;
    p_Fm->intrMng[event].h_SrcHandle = h_Arg;

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcRegisterIntr fmIpcRegisterIntr;
        t_Error err;
        t_FmIpcMsg msg;


        fmIpcRegisterIntr.event = (uint32_t)event;
        fmIpcRegisterIntr.guestId = p_Fm->guestId;
        memset(&msg, 0, sizeof(msg));
        msg.msgId = FM_REGISTER_INTR;
        memcpy(msg.msgBody, &fmIpcRegisterIntr, sizeof(fmIpcRegisterIntr));
        err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                (uint8_t*)&msg,
                                sizeof(msg.msgId) + sizeof(fmIpcRegisterIntr),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0),
                                ((void*)0));
        if (err != E_OK)
            REPORT_ERROR(MINOR, err, NO_MSG);
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        REPORT_ERROR(MINOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without IPC!"));
}
