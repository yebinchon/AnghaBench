
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_BmPortalLow; } ;
typedef TYPE_1__ t_BmPortal ;
struct bm_rcr_entry {int dummy; } ;


 int BM_RCR_RING ;
 int BmUpdate (TYPE_1__*,int ) ;
 int NCSW_PLOCK (TYPE_1__*) ;
 int PUNLOCK (TYPE_1__*) ;
 scalar_t__ RCR_THRESH ;
 scalar_t__ bm_rcr_get_avail (int ) ;
 struct bm_rcr_entry* bm_rcr_start (int ) ;
 int rel_set_thresh (TYPE_1__*,int) ;

__attribute__((used)) static struct bm_rcr_entry *try_rel_start(t_BmPortal *p_BmPortal)
{
    struct bm_rcr_entry *r;

    NCSW_PLOCK(p_BmPortal);
    if (bm_rcr_get_avail((p_BmPortal)->p_BmPortalLow) < RCR_THRESH)
        BmUpdate(p_BmPortal, BM_RCR_RING);
    r = bm_rcr_start((p_BmPortal)->p_BmPortalLow);
    if (!r) {
        rel_set_thresh(p_BmPortal, 1);
        PUNLOCK(p_BmPortal);
    }
    return r;
}
