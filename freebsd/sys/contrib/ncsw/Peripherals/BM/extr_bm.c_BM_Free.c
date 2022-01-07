
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_4__ {scalar_t__ guestId; scalar_t__ errIrq; struct TYPE_4__* p_BmDriverParams; int moduleName; } ;
typedef TYPE_1__ t_Bm ;


 int ERROR_CODE (int ) ;
 int E_INVALID_HANDLE ;
 int E_OK ;
 int FreeInitResources (TYPE_1__*) ;
 scalar_t__ NCSW_MASTER_ID ;
 scalar_t__ NO_IRQ ;
 int XX_DisableIntr (scalar_t__) ;
 int XX_Free (TYPE_1__*) ;
 int XX_FreeIntr (scalar_t__) ;
 int XX_IpcUnregisterMsgHandler (int ) ;

t_Error BM_Free(t_Handle h_Bm)
{
    t_Bm *p_Bm = (t_Bm *)h_Bm;

    if (!p_Bm)
       return ERROR_CODE(E_INVALID_HANDLE);

    if (p_Bm->guestId == NCSW_MASTER_ID)
    {
        XX_IpcUnregisterMsgHandler(p_Bm->moduleName);
        if (p_Bm->errIrq != NO_IRQ)
        {
            XX_DisableIntr(p_Bm->errIrq);
            XX_FreeIntr(p_Bm->errIrq);
        }
    }
    FreeInitResources(p_Bm);

    if(p_Bm->p_BmDriverParams)
        XX_Free(p_Bm->p_BmDriverParams);

    XX_Free(p_Bm);
    return E_OK;
}
