
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_mc {scalar_t__ state; } ;
struct bm_portal {struct bm_mc mc; } ;


 int ASSERT_COND (int) ;
 int UNUSED (struct bm_mc*) ;
 scalar_t__ mc_idle ;
 scalar_t__ mc_user ;

void bm_mc_abort(struct bm_portal *portal)
{
    register struct bm_mc *mc = &portal->mc;
    ASSERT_COND(mc->state == mc_user);



    UNUSED(mc);

}
