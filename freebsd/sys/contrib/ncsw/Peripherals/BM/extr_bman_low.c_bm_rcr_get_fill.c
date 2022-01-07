
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bm_rcr {int available; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int BM_RCR_SIZE ;

uint8_t bm_rcr_get_fill(struct bm_portal *portal)
{
    register struct bm_rcr *rcr = &portal->rcr;
    return (uint8_t)(BM_RCR_SIZE - 1 - rcr->available);
}
