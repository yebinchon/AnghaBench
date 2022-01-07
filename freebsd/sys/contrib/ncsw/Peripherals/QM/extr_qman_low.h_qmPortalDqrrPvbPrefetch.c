
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr {scalar_t__ pmode; int flags; int pi; int ring; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int QM_DQRR_FLAG_RE ;
 int dcbit_ro (int ) ;
 scalar_t__ e_QmPortalPVB ;
 int ptr_ADD (int ,int ) ;
 int qm_cl (int ) ;

__attribute__((used)) static __inline__ void qmPortalDqrrPvbPrefetch(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;





        dcbit_ro(ptr_ADD(dqrr->ring, qm_cl(dqrr->pi)));
}
