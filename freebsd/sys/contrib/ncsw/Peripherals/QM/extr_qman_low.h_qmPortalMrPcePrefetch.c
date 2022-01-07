
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr {scalar_t__ pmode; } ;
struct qm_portal {struct qm_mr mr; } ;


 int ASSERT_COND (int) ;
 int MR_PI ;
 scalar_t__ e_QmPortalPCE ;
 int qm_cl_invalidate (int ) ;
 int qm_cl_touch_ro (int ) ;

__attribute__((used)) static __inline__ void qmPortalMrPcePrefetch(struct qm_portal *portal)
{




    qm_cl_invalidate(MR_PI);
    qm_cl_touch_ro(MR_PI);
}
