
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct qm_mc {scalar_t__ state; int vbit; scalar_t__ rridx; scalar_t__ rr; TYPE_1__* cr; } ;
struct qm_portal {struct qm_mc mc; } ;
struct TYPE_2__ {int __dont_write_directly__verb; } ;


 int ASSERT_COND (int) ;
 int dcbf_64 (TYPE_1__*) ;
 int dcbit_ro (scalar_t__) ;
 scalar_t__ mc_hw ;
 scalar_t__ mc_user ;
 int rmb () ;

__attribute__((used)) static __inline__ void qm_mc_commit(struct qm_portal *portal, uint8_t myverb)
{
    register struct qm_mc *mc = &portal->mc;



    rmb();
    mc->cr->__dont_write_directly__verb = (uint8_t)(myverb | mc->vbit);
    dcbf_64(mc->cr);
    dcbit_ro(mc->rr + mc->rridx);



}
