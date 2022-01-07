
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mc {int rridx; scalar_t__ state; int vbit; struct qm_mc_result* rr; } ;
struct qm_portal {struct qm_mc mc; } ;
struct qm_mc_result {int verb; } ;


 int ASSERT_COND (int) ;
 int QM_MCC_VERB_VBIT ;
 int dcbit_ro (struct qm_mc_result*) ;
 scalar_t__ mc_hw ;
 scalar_t__ mc_idle ;

__attribute__((used)) static __inline__ struct qm_mc_result *qm_mc_result(struct qm_portal *portal)
{
    register struct qm_mc *mc = &portal->mc;
    struct qm_mc_result *rr = mc->rr + mc->rridx;






    if (!rr->verb) {
        dcbit_ro(rr);
        return ((void*)0);
    }
    mc->rridx ^= 1;
    mc->vbit ^= QM_MCC_VERB_VBIT;



    return rr;
}
