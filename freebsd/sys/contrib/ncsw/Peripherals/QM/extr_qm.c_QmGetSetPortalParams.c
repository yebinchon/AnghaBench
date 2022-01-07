
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_16__ {int majorRev; scalar_t__ minorRev; } ;
typedef TYPE_3__ t_QmRevisionInfo ;
struct TYPE_17__ {size_t portalId; int stashDestQueue; int liodn; int dqrrLiodn; int fdFqLiodn; } ;
typedef TYPE_4__ t_QmIpcPortalInitParams ;
struct TYPE_18__ {int msgBody; int msgId; } ;
typedef TYPE_5__ t_QmIpcMsg ;
struct TYPE_19__ {scalar_t__ guestId; int stashDestQueue; int liodn; int dqrrLiodn; int fdFqLiodn; size_t portalId; int lock; scalar_t__ h_Session; TYPE_2__* p_QmRegs; } ;
typedef TYPE_6__ t_QmInterModulePortalInitParams ;
typedef TYPE_6__ t_Qm ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_15__ {TYPE_1__* swpConfRegs; } ;
struct TYPE_14__ {int io_cfg; int lio_cfg; } ;


 int DBG (int ,char*) ;
 int E_INVALID_HANDLE ;
 int E_NULL_POINTER ;
 int E_OK ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int NO_MSG ;
 int QM_GET_SET_PORTAL_PARAMS ;
 int QmGetRevision (TYPE_6__*,TYPE_3__*) ;
 int RETURN_ERROR (int ,int ,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_6__*,int ) ;
 int WARNING ;
 int WRITE_UINT32 (int ,int) ;
 int XX_IpcSendMessage (scalar_t__,int *,int,int *,int *,int *,int *) ;
 int XX_LockSpinlock (int ) ;
 int XX_UnlockSpinlock (int ) ;
 int memcpy (int ,TYPE_4__*,int) ;
 int memset (TYPE_5__*,int ,int) ;

t_Error QmGetSetPortalParams(t_Handle h_Qm, t_QmInterModulePortalInitParams *p_PortalParams)
{
    t_Qm *p_Qm = (t_Qm *)h_Qm;
    t_QmRevisionInfo revInfo;
    uint32_t lioReg,ioReg;

    SANITY_CHECK_RETURN_ERROR(p_Qm, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_PortalParams, E_NULL_POINTER);

    if (p_Qm->guestId == NCSW_MASTER_ID)
    {
        QmGetRevision(p_Qm, &revInfo);

        if ((revInfo.majorRev == 1) && (revInfo.minorRev == 0))
        {
            lioReg = (uint32_t)(p_PortalParams->stashDestQueue << 24) |
                      (p_PortalParams->liodn << 16) |
                      (p_PortalParams->dqrrLiodn);
            ioReg = (p_PortalParams->fdFqLiodn);
        }
        else
        {
            lioReg = (uint32_t)(p_PortalParams->liodn << 16) |
                      (p_PortalParams->dqrrLiodn);
            ioReg = (uint32_t)(p_PortalParams->stashDestQueue << 16) |
                      (p_PortalParams->fdFqLiodn);
        }

        WRITE_UINT32(p_Qm->p_QmRegs->swpConfRegs[p_PortalParams->portalId].lio_cfg, lioReg);
        WRITE_UINT32(p_Qm->p_QmRegs->swpConfRegs[p_PortalParams->portalId].io_cfg, ioReg);
    }
    else if (p_Qm->h_Session)
    {
        t_QmIpcMsg msg;
        t_QmIpcPortalInitParams portalParams;
        t_Error errCode;

        memset(&msg, 0, sizeof(t_QmIpcMsg));
        portalParams.portalId = p_PortalParams->portalId;
        portalParams.stashDestQueue = p_PortalParams->stashDestQueue;
        portalParams.liodn = p_PortalParams->liodn;
        portalParams.dqrrLiodn = p_PortalParams->dqrrLiodn;
        portalParams.fdFqLiodn = p_PortalParams->fdFqLiodn;
        msg.msgId = QM_GET_SET_PORTAL_PARAMS;
        memcpy(msg.msgBody, &portalParams, sizeof(t_QmIpcPortalInitParams));
        XX_LockSpinlock(p_Qm->lock);
        if ((errCode = XX_IpcSendMessage(p_Qm->h_Session,
                                         (uint8_t*)&msg,
                                         sizeof(msg.msgId) + sizeof(t_QmIpcPortalInitParams),
                                         ((void*)0),
                                         ((void*)0),
                                         ((void*)0),
                                         ((void*)0))) != E_OK)
        {
            XX_UnlockSpinlock(p_Qm->lock);
            RETURN_ERROR(MAJOR, errCode, NO_MSG);
        }
        XX_UnlockSpinlock(p_Qm->lock);
    }
    else
        DBG(WARNING, ("Can't set portal parameters (e.g. liodns). " "probably QM is running in guest-mode with no IPC!"));


    return E_OK;
}
