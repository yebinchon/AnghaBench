
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_dqrr {scalar_t__ cmode; int ci; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int DQRR_CI_CINH ;
 int QM_DQRR_SIZE ;
 scalar_t__ e_QmPortalDqrrCCI ;
 int qm_out (int ,int) ;

__attribute__((used)) static __inline__ void qmPortalDqrrCciConsume(struct qm_portal *portal, uint8_t num)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;



    dqrr->ci = (uint8_t)((dqrr->ci + num) & (QM_DQRR_SIZE - 1));
    qm_out(DQRR_CI_CINH, dqrr->ci);
}
