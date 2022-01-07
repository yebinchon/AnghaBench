
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int t_Error ;
struct TYPE_8__ {TYPE_3__* replyBody; scalar_t__* msgBody; int msgId; } ;
typedef TYPE_1__ t_BmIpcReply ;
typedef TYPE_1__ t_BmIpcMsg ;
struct TYPE_9__ {scalar_t__ bpid; } ;
typedef TYPE_3__ t_BmIpcBpidParams ;
struct TYPE_10__ {int h_BpidMm; scalar_t__ h_Session; } ;
typedef TYPE_4__ t_Bm ;


 int BM_FORCE_BPID ;
 int DBG (int ,char*) ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int ILLEGAL_BASE ;
 int KASSERT (int,char*) ;
 int MAJOR ;
 scalar_t__ MM_Get (int ,scalar_t__,scalar_t__,char*) ;
 scalar_t__ MM_GetForce (int ,int,scalar_t__,char*) ;
 scalar_t__ MM_InRange (int ,scalar_t__) ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,int ,char*) ;
 scalar_t__ UINT32_MAX ;
 int WARNING ;
 int XX_IpcSendMessage (scalar_t__,scalar_t__*,int,scalar_t__*,int*,int *,int *) ;
 int memcpy (scalar_t__*,TYPE_3__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static __inline__ uint32_t BmBpidGet(t_Bm *p_Bm, bool force, uint32_t base)
{
    uint64_t ans, size = 1;
    uint64_t alignment = 1;

    if (force)
    {
        if (MM_InRange(p_Bm->h_BpidMm, (uint64_t)base))
        {
            ans = MM_GetForce(p_Bm->h_BpidMm,
                              base,
                              size,
                              "BM BPID MEM");
            ans = base;
        }
        else if (p_Bm->h_Session)
        {
            t_BmIpcMsg msg;
            t_BmIpcReply reply;
            uint32_t replyLength;
            t_BmIpcBpidParams ipcBpid;
            t_Error errCode = E_OK;

            memset(&msg, 0, sizeof(t_BmIpcMsg));
            memset(&reply, 0, sizeof(t_BmIpcReply));
            ipcBpid.bpid = (uint8_t)base;
            msg.msgId = BM_FORCE_BPID;
            memcpy(msg.msgBody, &ipcBpid, sizeof(t_BmIpcBpidParams));
            replyLength = sizeof(uint32_t) + sizeof(uint32_t);
            if ((errCode = XX_IpcSendMessage(p_Bm->h_Session,
                                             (uint8_t*)&msg,
                                             sizeof(msg.msgId) + sizeof(t_BmIpcBpidParams),
                                             (uint8_t*)&reply,
                                             &replyLength,
                                             ((void*)0),
                                             ((void*)0))) != E_OK)
            {
                REPORT_ERROR(MAJOR, errCode, NO_MSG);
                return (uint32_t)ILLEGAL_BASE;
            }
            if (replyLength != (sizeof(uint32_t) + sizeof(uint32_t)))
            {
                REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
                return (uint32_t)ILLEGAL_BASE;
            }
            memcpy((uint8_t*)&ans, reply.replyBody, sizeof(uint32_t));
        }
        else
        {
            DBG(WARNING, ("No Ipc - can't validate bpid."));
            ans = base;
        }
    }
    else
        ans = MM_Get(p_Bm->h_BpidMm,
                     size,
                     alignment,
                     "BM BPID MEM");
    KASSERT(ans < UINT32_MAX, ("Oops, %lx > UINT32_MAX!\n", ans));
    return (uint32_t)ans;
}
