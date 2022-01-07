
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int p_BmPortalLow; int irq; } ;
typedef TYPE_1__ t_BmPortal ;


 int BMAN_PORTAL_FLAG_IRQ ;
 int BM_RCR_RING ;
 int BmUpdate (TYPE_1__*,int ) ;
 int XX_DisableIntr (int ) ;
 int XX_Free (int ) ;
 int XX_FreeIntr (int ) ;
 int bm_mc_finish (int ) ;
 int bm_rcr_finish (int ) ;

__attribute__((used)) static void bman_destroy_portal(t_BmPortal* p_BmPortal)
{
    BmUpdate(p_BmPortal, BM_RCR_RING);
    if (p_BmPortal->flags & BMAN_PORTAL_FLAG_IRQ)
    {
        XX_DisableIntr(p_BmPortal->irq);
        XX_FreeIntr(p_BmPortal->irq);
    }
    bm_mc_finish(p_BmPortal->p_BmPortalLow);
    bm_rcr_finish(p_BmPortal->p_BmPortalLow);
    XX_Free(p_BmPortal->p_BmPortalLow);
}
