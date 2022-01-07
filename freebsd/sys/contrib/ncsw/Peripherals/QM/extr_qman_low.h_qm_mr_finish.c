
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr {scalar_t__ ci; int cursor; } ;
struct qm_portal {struct qm_mr mr; } ;


 int E_INVALID_STATE ;
 scalar_t__ MR_PTR2IDX (int ) ;
 int QM_BIND_MR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int WARNING ;
 int __qm_portal_unbind (struct qm_portal*,int ) ;

__attribute__((used)) static __inline__ void qm_mr_finish(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;
    if (mr->ci != MR_PTR2IDX(mr->cursor))
        REPORT_ERROR(WARNING, E_INVALID_STATE, ("Ignoring completed MR entries"));
    __qm_portal_unbind(portal, QM_BIND_MR);
}
