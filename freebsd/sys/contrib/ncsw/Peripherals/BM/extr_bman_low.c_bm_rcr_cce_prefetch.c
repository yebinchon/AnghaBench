
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr {scalar_t__ cmode; } ;
struct bm_portal {int rcr; } ;


 int ASSERT_COND (int) ;
 int RCR_CI ;
 int bm_cl_touch_ro (int ) ;
 scalar_t__ e_BmPortalRcrCCE ;

void bm_rcr_cce_prefetch(struct bm_portal *portal)
{
    ASSERT_COND(((struct bm_rcr *)&portal->rcr)->cmode == e_BmPortalRcrCCE);
    bm_cl_touch_ro(RCR_CI);
}
