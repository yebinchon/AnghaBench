
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr {scalar_t__ cmode; } ;
struct qm_portal {struct qm_mr mr; } ;


 int ASSERT_COND (int) ;
 int MR_CI ;
 scalar_t__ e_QmPortalMrCCE ;
 int qm_cl_invalidate (int ) ;
 int qm_cl_touch_rw (int ) ;

__attribute__((used)) static __inline__ void qmPortalMrCcePrefetch(struct qm_portal *portal)
{




    qm_cl_invalidate(MR_CI);
    qm_cl_touch_rw(MR_CI);
}
