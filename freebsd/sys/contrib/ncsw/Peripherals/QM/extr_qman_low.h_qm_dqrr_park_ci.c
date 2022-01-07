
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qm_dqrr {scalar_t__ cmode; int ci; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int DQRR_DCAP ;
 int QM_DQRR_SIZE ;
 scalar_t__ e_QmPortalDqrrDCA ;
 int qm_out (int ,int) ;

__attribute__((used)) static __inline__ void qm_dqrr_park_ci(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;



    qm_out(DQRR_DCAP, (0 << 8) |
        (uint32_t)(1 << 6) |
        (dqrr->ci & (QM_DQRR_SIZE - 1)));
}
