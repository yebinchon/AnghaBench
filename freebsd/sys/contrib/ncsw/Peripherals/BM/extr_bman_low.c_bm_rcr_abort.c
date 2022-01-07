
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr {scalar_t__ busy; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int ASSERT_COND (scalar_t__) ;
 int UNUSED (struct bm_rcr*) ;

void bm_rcr_abort(struct bm_portal *portal)
{
    register struct bm_rcr *rcr = &portal->rcr;
    ASSERT_COND(rcr->busy);



    UNUSED(rcr);

}
