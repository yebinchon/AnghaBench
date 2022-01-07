
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct bm_rcr {int busy; scalar_t__ pmode; int vbit; TYPE_1__* cursor; int available; } ;
struct bm_portal {struct bm_rcr rcr; } ;
struct TYPE_2__ {int __dont_write_directly__verb; } ;


 int ASSERT_COND (int) ;
 int RCR_INC (struct bm_rcr*) ;
 int RCR_PI ;
 int RCR_PTR2IDX (TYPE_1__*) ;
 int bm_cl_out (int ,int ) ;
 scalar_t__ e_BmPortalPCE ;
 int wmb () ;

void bm_rcr_pce_commit(struct bm_portal *portal, uint8_t myverb)
{
    register struct bm_rcr *rcr = &portal->rcr;
    ASSERT_COND(rcr->busy);
    ASSERT_COND(rcr->pmode == e_BmPortalPCE);
    rcr->cursor->__dont_write_directly__verb = (uint8_t)(myverb | rcr->vbit);
    RCR_INC(rcr);
    rcr->available--;
    wmb();
    bm_cl_out(RCR_PI, RCR_PTR2IDX(rcr->cursor));



}
