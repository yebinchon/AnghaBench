
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mc {scalar_t__ state; } ;
struct qm_portal {struct qm_mc mc; } ;


 int ASSERT_COND (int) ;
 int E_INVALID_STATE ;
 int QM_BIND_MC ;
 int REPORT_ERROR (int ,int ,char*) ;
 int WARNING ;
 int __qm_portal_unbind (struct qm_portal*,int ) ;
 scalar_t__ mc_idle ;

__attribute__((used)) static __inline__ void qm_mc_finish(struct qm_portal *portal)
{






    __qm_portal_unbind(portal, QM_BIND_MC);
}
