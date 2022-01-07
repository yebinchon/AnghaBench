
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr {scalar_t__ pmode; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int ASSERT_COND (int) ;
 int EQCR_PI ;
 scalar_t__ e_QmPortalPCE ;
 int qm_cl_invalidate (int ) ;
 int qm_cl_touch_rw (int ) ;

__attribute__((used)) static __inline__ void qmPortalEqcrPcePrefetch(struct qm_portal *portal)
{




    qm_cl_invalidate(EQCR_PI);
    qm_cl_touch_rw(EQCR_PI);
}
