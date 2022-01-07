
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr_entry {int dummy; } ;
struct bm_rcr {int busy; struct bm_rcr_entry* cursor; int available; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int ASSERT_COND (int) ;
 int dcbz_64 (struct bm_rcr_entry*) ;

struct bm_rcr_entry *bm_rcr_start(struct bm_portal *portal)
{
    register struct bm_rcr *rcr = &portal->rcr;
    ASSERT_COND(!rcr->busy);
    if (!rcr->available)
        return ((void*)0);



    dcbz_64(rcr->cursor);
    return rcr->cursor;
}
