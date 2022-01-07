
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bm_rcr_entry {int __dont_write_directly__verb; } ;
struct bm_rcr {int busy; scalar_t__ pmode; int available; int vbit; struct bm_rcr_entry* cursor; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int ASSERT_COND (int) ;
 int RCR_INC (struct bm_rcr*) ;
 int dcbf_64 (struct bm_rcr_entry*) ;
 int dcbz_64 (struct bm_rcr_entry*) ;
 scalar_t__ e_BmPortalPVB ;

struct bm_rcr_entry *bm_rcr_pend_and_next(struct bm_portal *portal, uint8_t myverb)
{
    register struct bm_rcr *rcr = &portal->rcr;
    ASSERT_COND(rcr->busy);
    ASSERT_COND(rcr->pmode != e_BmPortalPVB);
    if (rcr->available == 1)
        return ((void*)0);
    rcr->cursor->__dont_write_directly__verb = (uint8_t)(myverb | rcr->vbit);
    dcbf_64(rcr->cursor);
    RCR_INC(rcr);
    rcr->available--;
    dcbz_64(rcr->cursor);
    return rcr->cursor;
}
