
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_dqrr {scalar_t__ cmode; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int DQRR_CI ;
 int QM_DQRR_SIZE ;
 scalar_t__ e_QmPortalDqrrDCA ;
 int qm_cl_in (int ) ;

__attribute__((used)) static __inline__ uint8_t qmPortalDqrrDcaCce(struct qm_portal *portal)
{




    return (uint8_t)(qm_cl_in(DQRR_CI) & (QM_DQRR_SIZE - 1));
}
