
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct qm_dqrr {scalar_t__ cmode; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int DQRR_DCAP ;
 scalar_t__ e_QmPortalDqrrDCA ;
 int qm_out (int ,int) ;

__attribute__((used)) static __inline__ void qmPortalDqrrDcaConsumeN(struct qm_portal *portal, uint16_t bitmask)
{




    qm_out(DQRR_DCAP, (1 << 8) |
        ((uint32_t)bitmask << 16));
}
