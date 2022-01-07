
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct qm_dqrr {scalar_t__ cmode; struct qm_dqrr_entry* ring; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;
struct qm_dqrr_entry {int dummy; } ;


 int ASSERT_COND (int) ;
 int DQRR_DCAP ;
 int DQRR_PTR2IDX (struct qm_dqrr_entry*) ;
 int QM_DQRR_SIZE ;
 scalar_t__ e_QmPortalDqrrDCA ;
 int qm_out (int ,int) ;

__attribute__((used)) static __inline__ void qmPortalDqrrDcaConsume1ptr(struct qm_portal *portal,
                                                  struct qm_dqrr_entry *dq,
                                                  bool park)
{
    uint8_t idx = DQRR_PTR2IDX(dq);







    qm_out(DQRR_DCAP, (0 << 8) |
        ((uint32_t)(park ? 1 : 0) << 6) |
        idx);
}
