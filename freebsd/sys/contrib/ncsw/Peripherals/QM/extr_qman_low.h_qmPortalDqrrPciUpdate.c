
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct qm_dqrr {scalar_t__ pmode; int fill; scalar_t__ pi; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int DQRR_PI_CINH ;
 int QM_DQRR_SIZE ;
 scalar_t__ cyc_diff (int,scalar_t__,scalar_t__) ;
 scalar_t__ e_QmPortalPCI ;
 int qm_in (int ) ;

__attribute__((used)) static __inline__ uint8_t qmPortalDqrrPciUpdate(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;
    uint8_t diff, old_pi = dqrr->pi;



    dqrr->pi = (uint8_t)(qm_in(DQRR_PI_CINH) & (QM_DQRR_SIZE - 1));
    diff = cyc_diff(QM_DQRR_SIZE, old_pi, dqrr->pi);
    dqrr->fill += diff;
    return diff;
}
