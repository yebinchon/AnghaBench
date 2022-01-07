
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr {scalar_t__ cmode; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 int DQRR_CI ;
 scalar_t__ e_QmPortalDqrrCCE ;
 int qm_cl_invalidate (int ) ;
 int qm_cl_touch_rw (int ) ;

__attribute__((used)) static __inline__ void qmPortalDqrrCcePrefetch(struct qm_portal *portal)
{




    qm_cl_invalidate(DQRR_CI);
    qm_cl_touch_rw(DQRR_CI);
}
