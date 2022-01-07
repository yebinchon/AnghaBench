
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mc {scalar_t__ state; } ;
struct qm_portal {struct qm_mc mc; } ;


 int ASSERT_COND (int) ;
 int UNUSED (struct qm_portal*) ;
 scalar_t__ mc_idle ;
 scalar_t__ mc_user ;

__attribute__((used)) static __inline__ void qm_mc_abort(struct qm_portal *portal)
{





    UNUSED(portal);

}
