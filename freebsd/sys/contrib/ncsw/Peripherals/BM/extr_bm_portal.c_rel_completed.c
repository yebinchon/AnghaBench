
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int rcrCons; int p_BmPortalLow; } ;
typedef TYPE_1__ t_BmPortal ;


 int BM_RCR_SIZE ;
 int bm_rcr_get_fill (int ) ;
 int rel_set_thresh (TYPE_1__*,int ) ;

__attribute__((used)) static int rel_completed(t_BmPortal *p_BmPortal, uint32_t rcr_poll)
{
    uint32_t tr_cons = p_BmPortal->rcrCons;
    if (rcr_poll & 0xc0000000) {
        rcr_poll &= 0x7fffffff;
        tr_cons ^= 0x80000000;
    }
    if (tr_cons >= rcr_poll)
        return 1;
    if ((rcr_poll - tr_cons) > BM_RCR_SIZE)
        return 1;
    if (!bm_rcr_get_fill(p_BmPortal->p_BmPortalLow))

        return 1;
    rel_set_thresh(p_BmPortal, 0);
    return 0;
}
