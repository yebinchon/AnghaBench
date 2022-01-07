
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct qm_dqrr {scalar_t__ cmode; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int DQRR_DCAP ;
 int QM_DQRR_SIZE ;
 scalar_t__ e_QmPortalDqrrDCA ;
 int qm_out (int ,int) ;

__attribute__((used)) static __inline__ void qm_dqrr_park(struct qm_portal *portal, uint8_t idx)
{





    qm_out(DQRR_DCAP, (0 << 8) |
        (uint32_t)(1 << 6) |
        (idx & (QM_DQRR_SIZE - 1)));
}
