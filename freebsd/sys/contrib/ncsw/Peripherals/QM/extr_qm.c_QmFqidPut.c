
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
struct TYPE_7__ {int msgBody; int msgId; } ;
typedef TYPE_1__ t_QmIpcMsg ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ fqid; } ;
typedef TYPE_2__ t_QmIpcFqidParams ;
struct TYPE_9__ {int lock; scalar_t__ h_Session; int h_FqidMm; int h_RsrvFqidMm; } ;
typedef TYPE_3__ t_Qm ;
typedef int t_Error ;


 int DBG (int ,char*) ;
 int ERROR_CODE (int ) ;
 int E_NOT_FOUND ;
 int E_OK ;
 scalar_t__ ILLEGAL_BASE ;
 int MAJOR ;
 scalar_t__ MM_GetForce (int ,int ,int ,char*) ;
 scalar_t__ MM_InRange (int ,int ) ;
 scalar_t__ MM_Put (int ,int ) ;
 int MM_PutForce (int ,int ,int ) ;
 int NO_MSG ;
 int QM_PUT_FQID ;
 int RETURN_ERROR (int ,int ,int ) ;
 int WARNING ;
 int XX_IpcSendMessage (scalar_t__,scalar_t__*,int,int *,int *,int *,int *) ;
 scalar_t__ XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,scalar_t__) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

t_Error QmFqidPut(t_Qm *p_Qm, uint32_t base)
{
    uint32_t intFlags;

    intFlags = XX_LockIntrSpinlock(p_Qm->lock);

    if (MM_GetForce(p_Qm->h_RsrvFqidMm,
                    (uint64_t)base,
                    (uint64_t)1,
                    "QM rsrv FQID MEM") == ILLEGAL_BASE)
    {
        XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);
        return E_OK;
    }
    else
        MM_PutForce(p_Qm->h_RsrvFqidMm,
                    (uint64_t)base,
                    (uint64_t)1);
    if (MM_InRange(p_Qm->h_FqidMm, (uint64_t)base))
    {
        if (MM_Put(p_Qm->h_FqidMm, (uint64_t)base) != 0)
        {
            XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);
            return E_OK;
        }
        else
        {
            XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);
            return ERROR_CODE(E_NOT_FOUND);
        }
    }
    else if (p_Qm->h_Session)
    {
        t_QmIpcMsg msg;
        t_QmIpcFqidParams ipcFqid;
        t_Error errCode = E_OK;

        memset(&msg, 0, sizeof(t_QmIpcMsg));
        ipcFqid.fqid = (uint8_t)base;
        ipcFqid.size = 0;
        msg.msgId = QM_PUT_FQID;
        memcpy(msg.msgBody, &ipcFqid, sizeof(t_QmIpcFqidParams));
        if ((errCode = XX_IpcSendMessage(p_Qm->h_Session,
                                         (uint8_t*)&msg,
                                         sizeof(msg.msgId) + sizeof(t_QmIpcFqidParams),
                                         ((void*)0),
                                         ((void*)0),
                                         ((void*)0),
                                         ((void*)0))) != E_OK)
        {
            XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);
            RETURN_ERROR(MAJOR, errCode, NO_MSG);
        }
    }
    else
        DBG(WARNING, ("No Ipc - can't validate fqid."));
    XX_UnlockIntrSpinlock(p_Qm->lock, intFlags);

    return E_OK;
}
