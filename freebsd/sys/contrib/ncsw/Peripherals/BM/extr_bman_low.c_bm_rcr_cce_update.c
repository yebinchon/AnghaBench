
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bm_rcr {scalar_t__ cmode; int available; scalar_t__ ci; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int ASSERT_COND (int) ;
 int BM_RCR_SIZE ;
 int RCR_CI ;
 int bm_cl_in (int ) ;
 int bm_cl_invalidate (int ) ;
 scalar_t__ cyc_diff (int,scalar_t__,scalar_t__) ;
 scalar_t__ e_BmPortalRcrCCE ;

uint8_t bm_rcr_cce_update(struct bm_portal *portal)
{
    register struct bm_rcr *rcr = &portal->rcr;
    uint8_t diff, old_ci = rcr->ci;
    ASSERT_COND(rcr->cmode == e_BmPortalRcrCCE);
    rcr->ci = (uint8_t)(bm_cl_in(RCR_CI) & (BM_RCR_SIZE - 1));
    bm_cl_invalidate(RCR_CI);
    diff = cyc_diff(BM_RCR_SIZE, old_ci, rcr->ci);
    rcr->available += diff;
    return diff;
}
