
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr {scalar_t__ pmode; } ;
struct bm_portal {int rcr; } ;


 int ASSERT_COND (int) ;
 int RCR_PI ;
 int bm_cl_invalidate (int ) ;
 int bm_cl_touch_rw (int ) ;
 scalar_t__ e_BmPortalPCE ;

void bm_rcr_pce_prefetch(struct bm_portal *portal)
{
    ASSERT_COND(((struct bm_rcr *)&portal->rcr)->pmode == e_BmPortalPCE);
    bm_cl_invalidate(RCR_PI);
    bm_cl_touch_rw(RCR_PI);
}
