
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ guestId; scalar_t__ errIrq; struct TYPE_5__* p_QmDriverParams; int moduleName; scalar_t__ lock; } ;
typedef TYPE_1__ t_Qm ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FreeInitResources (TYPE_1__*) ;
 scalar_t__ NCSW_MASTER_ID ;
 scalar_t__ NO_IRQ ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int XX_DisableIntr (scalar_t__) ;
 int XX_Free (TYPE_1__*) ;
 int XX_FreeIntr (scalar_t__) ;
 int XX_FreeSpinlock (scalar_t__) ;
 int XX_IpcUnregisterMsgHandler (int ) ;

t_Error QM_Free(t_Handle h_Qm)
{
    t_Qm *p_Qm = (t_Qm *)h_Qm;

    SANITY_CHECK_RETURN_ERROR(p_Qm, E_INVALID_HANDLE);

    if (p_Qm->lock)
        XX_FreeSpinlock(p_Qm->lock);

    if (p_Qm->guestId == NCSW_MASTER_ID)
    {
        XX_IpcUnregisterMsgHandler(p_Qm->moduleName);
        if (p_Qm->errIrq != NO_IRQ)
        {
            XX_DisableIntr(p_Qm->errIrq);
            XX_FreeIntr(p_Qm->errIrq);
        }
    }
    FreeInitResources(p_Qm);

    if (p_Qm->p_QmDriverParams)
        XX_Free(p_Qm->p_QmDriverParams);

    XX_Free(p_Qm);

    return E_OK;
}
