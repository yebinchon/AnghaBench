
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cpu; } ;
struct TYPE_7__ {struct TYPE_7__* p_LowQmPortal; struct TYPE_7__* p_QmPortalDriverParams; scalar_t__ bind_lock; struct TYPE_7__* p_NullCB; TYPE_1__ config; int h_Qm; } ;
typedef TYPE_2__ t_QmPortal ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
typedef int e_DpaaSwPortal ;


 int ASSERT_COND (TYPE_2__*) ;
 int ERROR_CODE (int ) ;
 int E_INVALID_HANDLE ;
 int E_OK ;
 int QmSetPortalHandle (int ,int *,int ) ;
 int XX_Free (TYPE_2__*) ;
 int XX_FreeSpinlock (scalar_t__) ;
 int qman_destroy_portal (TYPE_2__*) ;

t_Error QM_PORTAL_Free(t_Handle h_QmPortal)
{
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;

    if (!p_QmPortal)
       return ERROR_CODE(E_INVALID_HANDLE);

    ASSERT_COND(p_QmPortal->p_LowQmPortal);
    QmSetPortalHandle(p_QmPortal->h_Qm, ((void*)0), (e_DpaaSwPortal)p_QmPortal->p_LowQmPortal->config.cpu);
    qman_destroy_portal(p_QmPortal);
    if (p_QmPortal->p_NullCB)
        XX_Free(p_QmPortal->p_NullCB);

    if (p_QmPortal->p_LowQmPortal->bind_lock)
        XX_FreeSpinlock(p_QmPortal->p_LowQmPortal->bind_lock);
    if(p_QmPortal->p_QmPortalDriverParams)
        XX_Free(p_QmPortal->p_QmPortalDriverParams);
    XX_Free(p_QmPortal->p_LowQmPortal);
    XX_Free(p_QmPortal);

    return E_OK;
}
