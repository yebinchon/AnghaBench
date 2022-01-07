
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bm_rcr {int available; } ;
struct bm_portal {struct bm_rcr rcr; } ;



uint8_t bm_rcr_get_avail(struct bm_portal *portal)
{
    register struct bm_rcr *rcr = &portal->rcr;
    return rcr->available;
}
