
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bm_rcr {int ithresh; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int RCR_ITR ;
 int bm_out (int ,int ) ;

void bm_rcr_set_ithresh(struct bm_portal *portal, uint8_t ithresh)
{
    register struct bm_rcr *rcr = &portal->rcr;
    rcr->ithresh = ithresh;
    bm_out(RCR_ITR, ithresh);
}
