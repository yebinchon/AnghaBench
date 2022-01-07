
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr {scalar_t__ busy; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int ASSERT_COND (scalar_t__) ;
 int UNUSED (struct qm_portal*) ;

__attribute__((used)) static __inline__ void qm_eqcr_abort(struct qm_portal *portal)
{





    UNUSED(portal);

}
