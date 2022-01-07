
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr {scalar_t__ cmode; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int ASSERT_COND (int) ;
 int EQCR_CI ;
 scalar_t__ e_QmPortalEqcrCCE ;
 int qm_cl_touch_ro (int ) ;

__attribute__((used)) static __inline__ void qmPortalEqcrCcePrefetch(struct qm_portal *portal)
{




    qm_cl_touch_ro(EQCR_CI);
}
