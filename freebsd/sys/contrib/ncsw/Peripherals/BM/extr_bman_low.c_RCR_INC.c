
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr_entry {int dummy; } ;
struct bm_rcr {int vbit; struct bm_rcr_entry* cursor; } ;


 int BM_RCR_VERB_VBIT ;
 struct bm_rcr_entry* RCR_CARRYCLEAR (struct bm_rcr_entry*) ;

__attribute__((used)) static __inline__ void RCR_INC(struct bm_rcr *rcr)
{



    struct bm_rcr_entry *partial = rcr->cursor + 1;
    rcr->cursor = RCR_CARRYCLEAR(partial);
    if (partial != rcr->cursor)
        rcr->vbit ^= BM_RCR_VERB_VBIT;
}
