
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int t_Error ;
struct TYPE_7__ {int msgBody; int msgId; } ;
typedef TYPE_1__ t_BmIpcMsg ;
struct TYPE_8__ {scalar_t__ bpid; } ;
typedef TYPE_2__ t_BmIpcBpidParams ;
struct TYPE_9__ {scalar_t__ h_Session; int h_BpidMm; } ;
typedef TYPE_3__ t_Bm ;


 int BM_PUT_BPID ;
 int DBG (int ,char*) ;
 int ERROR_CODE (int ) ;
 int E_NOT_FOUND ;
 int E_OK ;
 int MAJOR ;
 scalar_t__ MM_InRange (int ,int ) ;
 scalar_t__ MM_Put (int ,int ) ;
 int NO_MSG ;
 int RETURN_ERROR (int ,int ,int ) ;
 int WARNING ;
 int XX_IpcSendMessage (scalar_t__,scalar_t__*,int,int *,int *,int *,int *) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static __inline__ t_Error BmBpidPut(t_Bm *p_Bm, uint32_t base)
{
    if (MM_InRange(p_Bm->h_BpidMm, (uint64_t)base))
    {
        if (MM_Put(p_Bm->h_BpidMm, (uint64_t)base) != base)
            return E_OK;
        else
            return ERROR_CODE(E_NOT_FOUND);
    }
    else if (p_Bm->h_Session)
    {
        t_BmIpcMsg msg;
        t_BmIpcBpidParams ipcBpid;
        t_Error errCode = E_OK;

        memset(&msg, 0, sizeof(t_BmIpcMsg));
        ipcBpid.bpid = (uint8_t)base;
        msg.msgId = BM_PUT_BPID;
        memcpy(msg.msgBody, &ipcBpid, sizeof(t_BmIpcBpidParams));
        if ((errCode = XX_IpcSendMessage(p_Bm->h_Session,
                                         (uint8_t*)&msg,
                                         sizeof(msg.msgId) + sizeof(t_BmIpcBpidParams),
                                         ((void*)0),
                                         ((void*)0),
                                         ((void*)0),
                                         ((void*)0))) != E_OK)
            RETURN_ERROR(MAJOR, errCode, NO_MSG);
    }
    else
        DBG(WARNING, ("No Ipc - can't validate bpid."));
    return E_OK;
}
