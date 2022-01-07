
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr {scalar_t__ cmode; int ci; int cursor; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int DQRR_CI ;
 int DQRR_PTR2IDX (int ) ;
 scalar_t__ e_QmPortalDqrrCCE ;
 int qm_cl_out (int ,int ) ;

__attribute__((used)) static __inline__ void qmPortalDqrrCceConsume_to_current(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;



    dqrr->ci = DQRR_PTR2IDX(dqrr->cursor);
    qm_cl_out(DQRR_CI, dqrr->ci);
}
