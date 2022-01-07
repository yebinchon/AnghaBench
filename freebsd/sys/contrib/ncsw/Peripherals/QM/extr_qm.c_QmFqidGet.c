
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {TYPE_3__* replyBody; int * msgBody; int msgId; } ;
typedef TYPE_1__ t_QmIpcReply ;
typedef TYPE_1__ t_QmIpcMsg ;
struct TYPE_9__ {int fqid; int size; } ;
typedef TYPE_3__ t_QmIpcFqidParams ;
struct TYPE_10__ {int lock; int h_FqidMm; scalar_t__ h_Session; int h_RsrvFqidMm; } ;
typedef TYPE_4__ t_Qm ;
typedef scalar_t__ t_Error ;


 int DBG (int ,char*) ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 scalar_t__ ILLEGAL_BASE ;
 int KASSERT (int,char*) ;
 int MAJOR ;
 scalar_t__ MM_Get (int ,int,int,char*) ;
 scalar_t__ MM_GetForce (int ,scalar_t__,scalar_t__,char*) ;
 char* NO_MSG ;
 int QM_FORCE_FQID ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ UINT32_MAX ;
 int WARNING ;
 scalar_t__ XX_IpcSendMessage (scalar_t__,int *,int,int *,int*,int *,int *) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int) ;
 int memcpy (int *,TYPE_3__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

uint32_t QmFqidGet(t_Qm *p_Qm, uint32_t size, uint32_t alignment, bool force, uint32_t base)
{
    uint64_t ans;
    uint32_t intFlags;

    intFlags = XX_LockIntrSpinlock(p_Qm->lock);
    if (force)
    {
        ans = MM_GetForce(p_Qm->h_FqidMm,
                          (uint64_t)base,
                          (uint64_t)size,
                          "QM FQID MEM");
        if (ans == ILLEGAL_BASE)
        {
            ans = MM_GetForce(p_Qm->h_RsrvFqidMm,
                              (uint64_t)base,
                              (uint64_t)size,
                              "QM rsrv FQID MEM");
            if (ans == ILLEGAL_BASE)
                ans = base;
            else if (p_Qm->h_Session)
            {
                t_QmIpcMsg msg;
                t_QmIpcReply reply;
                uint32_t replyLength;
                t_QmIpcFqidParams ipcFqid;
                t_Error errCode = E_OK;

                memset(&msg, 0, sizeof(t_QmIpcMsg));
                memset(&reply, 0, sizeof(t_QmIpcReply));
                ipcFqid.fqid = base;
                ipcFqid.size = size;
                msg.msgId = QM_FORCE_FQID;
                memcpy(msg.msgBody, &ipcFqid, sizeof(t_QmIpcFqidParams));
                replyLength = sizeof(uint32_t) + sizeof(uint32_t);
                if ((errCode = XX_IpcSendMessage(p_Qm->h_Session,
                                                 (uint8_t*)&msg,
                                                 sizeof(msg.msgId) + sizeof(t_QmIpcFqidParams),
                                                 (uint8_t*)&reply,
                                                 &replyLength,
                                                 ((void*)0),
                                                 ((void*)0))) != E_OK)
                    REPORT_ERROR(MAJOR, errCode, NO_MSG);
                if (replyLength != (sizeof(uint32_t) + sizeof(uint32_t)))
                   REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));

                if ((errCode != E_OK) ||
                    (replyLength != (sizeof(uint32_t) + sizeof(uint32_t))))
                    ans = ILLEGAL_BASE;
                else
                    memcpy((uint8_t*)&ans, reply.replyBody, sizeof(uint32_t));
            }
            else
            {
                DBG(WARNING, ("No Ipc - can't validate fqid."));
                ans = base;
            }
        }
    }
    else
        ans = MM_Get(p_Qm->h_FqidMm,
                     size,
                     alignment,
                     "QM FQID MEM");
    XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);

    KASSERT(ans < UINT32_MAX, ("Oops, %lx > UINT32_MAX!\n", ans));
    return (uint32_t)ans;
}
