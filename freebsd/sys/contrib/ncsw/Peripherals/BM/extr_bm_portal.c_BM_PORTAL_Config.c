
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef struct bm_portal* t_Handle ;
struct TYPE_6__ {struct TYPE_6__* h_Bm; int irq; scalar_t__ swPortalId; int ciBaseAddress; int ceBaseAddress; } ;
typedef TYPE_2__ t_BmPortalParam ;
struct TYPE_5__ {void* addr_ci; void* addr_ce; } ;
struct bm_portal {int cpu; int mask; struct bm_portal* p_BmPortalDriverParams; int hwExtStructsMemAttr; TYPE_2__* h_Bm; int irq; TYPE_1__ addr; struct bm_portal* p_BmPortalLow; } ;
typedef struct bm_portal t_BmPortalDriverParams ;
typedef struct bm_portal t_BmPortal ;


 int DEFAULT_memAttr ;
 int E_INVALID_HANDLE ;
 int E_NO_MEMORY ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_2__*,int ,int *) ;
 void* UINT_TO_PTR (int ) ;
 int XX_Free (struct bm_portal*) ;
 scalar_t__ XX_Malloc (int) ;
 int bman_depletion_fill (int *) ;
 int memset (struct bm_portal*,int ,int) ;

t_Handle BM_PORTAL_Config(t_BmPortalParam *p_BmPortalParam)
{
    t_BmPortal *p_BmPortal;

    SANITY_CHECK_RETURN_VALUE(p_BmPortalParam, E_INVALID_HANDLE, ((void*)0));
    SANITY_CHECK_RETURN_VALUE(p_BmPortalParam->h_Bm, E_INVALID_HANDLE, ((void*)0));

    p_BmPortal = (t_BmPortal *)XX_Malloc(sizeof(t_BmPortal));
    if (!p_BmPortal)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("Bm Portal obj!!!"));
        return ((void*)0);
    }
    memset(p_BmPortal, 0, sizeof(t_BmPortal));

    p_BmPortal->p_BmPortalLow = (struct bm_portal *)XX_Malloc(sizeof(struct bm_portal));
    if (!p_BmPortal->p_BmPortalLow)
    {
        XX_Free(p_BmPortal);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("Low bm portal obj!!!"));
        return ((void*)0);
    }
    memset(p_BmPortal->p_BmPortalLow, 0, sizeof(struct bm_portal));

    p_BmPortal->p_BmPortalDriverParams = (t_BmPortalDriverParams *)XX_Malloc(sizeof(t_BmPortalDriverParams));
    if (!p_BmPortal->p_BmPortalDriverParams)
    {
        XX_Free(p_BmPortal);
        XX_Free(p_BmPortal->p_BmPortalLow);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("Bm Portal driver parameters"));
        return ((void*)0);
    }
    memset(p_BmPortal->p_BmPortalDriverParams, 0, sizeof(t_BmPortalDriverParams));

    p_BmPortal->p_BmPortalLow->addr.addr_ce = UINT_TO_PTR(p_BmPortalParam->ceBaseAddress);
    p_BmPortal->p_BmPortalLow->addr.addr_ci = UINT_TO_PTR(p_BmPortalParam->ciBaseAddress);
    p_BmPortal->cpu = (int)p_BmPortalParam->swPortalId;
    p_BmPortal->irq = p_BmPortalParam->irq;

    p_BmPortal->h_Bm = p_BmPortalParam->h_Bm;

    p_BmPortal->p_BmPortalDriverParams->hwExtStructsMemAttr = DEFAULT_memAttr;
    bman_depletion_fill(&p_BmPortal->p_BmPortalDriverParams->mask);

    return p_BmPortal;
}
