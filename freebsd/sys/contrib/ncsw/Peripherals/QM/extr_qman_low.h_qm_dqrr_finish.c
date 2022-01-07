
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr {scalar_t__ ci; int cursor; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 scalar_t__ DQRR_PTR2IDX (int ) ;
 int E_INVALID_STATE ;
 int QM_BIND_DQRR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int WARNING ;
 int __qm_portal_unbind (struct qm_portal*,int ) ;

__attribute__((used)) static __inline__ void qm_dqrr_finish(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;
    if (dqrr->ci != DQRR_PTR2IDX(dqrr->cursor))
        REPORT_ERROR(WARNING, E_INVALID_STATE, ("Ignoring completed DQRR entries"));
    __qm_portal_unbind(portal, QM_BIND_DQRR);
}
