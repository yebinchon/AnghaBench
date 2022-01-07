
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bm_rcr_entry {int __dont_write_directly__verb; } ;
struct bm_rcr {int busy; scalar_t__ pmode; int vbit; int available; struct bm_rcr_entry* cursor; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int ASSERT_COND (int) ;
 int RCR_INC (struct bm_rcr*) ;
 int dcbf_64 (struct bm_rcr_entry*) ;
 scalar_t__ e_BmPortalPVB ;
 int rmb () ;

void bm_rcr_pvb_commit(struct bm_portal *portal, uint8_t myverb)
{
    register struct bm_rcr *rcr = &portal->rcr;
    struct bm_rcr_entry *rcursor;
    ASSERT_COND(rcr->busy);
    ASSERT_COND(rcr->pmode == e_BmPortalPVB);
    rmb();
    rcursor = rcr->cursor;
    rcursor->__dont_write_directly__verb = (uint8_t)(myverb | rcr->vbit);
    dcbf_64(rcursor);
    RCR_INC(rcr);
    rcr->available--;



}
