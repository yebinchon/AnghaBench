
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct bm_mc {scalar_t__ state; int vbit; scalar_t__ rridx; scalar_t__ rr; TYPE_1__* cr; } ;
struct bm_portal {struct bm_mc mc; } ;
struct TYPE_2__ {int __dont_write_directly__verb; } ;


 int ASSERT_COND (int) ;
 int dcbf_64 (TYPE_1__*) ;
 int dcbit_ro (scalar_t__) ;
 scalar_t__ mc_hw ;
 scalar_t__ mc_user ;
 int rmb () ;

void bm_mc_commit(struct bm_portal *portal, uint8_t myverb)
{
    register struct bm_mc *mc = &portal->mc;
    ASSERT_COND(mc->state == mc_user);
    rmb();
    mc->cr->__dont_write_directly__verb = (uint8_t)(myverb | mc->vbit);
    dcbf_64(mc->cr);
    dcbit_ro(mc->rr + mc->rridx);



}
