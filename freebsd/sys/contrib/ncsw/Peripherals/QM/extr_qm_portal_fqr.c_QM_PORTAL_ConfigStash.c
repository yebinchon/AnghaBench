
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fdFqDrop; struct TYPE_5__* p_QmPortalDriverParams; int fdFqHighPri; int fdFq; int dqrrHighPri; int dqrr; int eqcrHighPri; int eqcr; int fdFqLiodn; int dqrrLiodn; int stashDestQueue; } ;
typedef TYPE_1__ t_QmPortalStashParam ;
typedef TYPE_1__ t_QmPortal ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_NULL_POINTER ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error QM_PORTAL_ConfigStash(t_Handle h_QmPortal, t_QmPortalStashParam *p_StashParams)
{
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;

    SANITY_CHECK_RETURN_ERROR(p_QmPortal, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_QmPortal->p_QmPortalDriverParams, E_NULL_POINTER);
    SANITY_CHECK_RETURN_ERROR(p_StashParams, E_NULL_POINTER);

    p_QmPortal->p_QmPortalDriverParams->stashDestQueue = p_StashParams->stashDestQueue;
    p_QmPortal->p_QmPortalDriverParams->dqrrLiodn = p_StashParams->dqrrLiodn;
    p_QmPortal->p_QmPortalDriverParams->fdFqLiodn = p_StashParams->fdFqLiodn;
    p_QmPortal->p_QmPortalDriverParams->eqcr = p_StashParams->eqcr;
    p_QmPortal->p_QmPortalDriverParams->eqcrHighPri = p_StashParams->eqcrHighPri;
    p_QmPortal->p_QmPortalDriverParams->dqrr = p_StashParams->dqrr;
    p_QmPortal->p_QmPortalDriverParams->dqrrHighPri = p_StashParams->dqrrHighPri;
    p_QmPortal->p_QmPortalDriverParams->fdFq = p_StashParams->fdFq;
    p_QmPortal->p_QmPortalDriverParams->fdFqHighPri = p_StashParams->fdFqHighPri;
    p_QmPortal->p_QmPortalDriverParams->fdFqDrop = p_StashParams->fdFqDrop;

    return E_OK;
}
