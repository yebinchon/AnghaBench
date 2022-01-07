
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct qm_eqcr {scalar_t__ ci; int cursor; int busy; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int ASSERT_COND (int) ;
 int EQCR_CI_CINH ;
 int EQCR_PI_CINH ;
 scalar_t__ EQCR_PTR2IDX (int ) ;
 int E_INVALID_STATE ;
 int QM_BIND_EQCR ;
 int QM_EQCR_SIZE ;
 int REPORT_ERROR (int ,int ,char*) ;
 int WARNING ;
 int __qm_portal_unbind (struct qm_portal*,int ) ;
 int qm_in (int ) ;

__attribute__((used)) static __inline__ void qm_eqcr_finish(struct qm_portal *portal)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
    uint8_t pi = (uint8_t)(qm_in(EQCR_PI_CINH) & (QM_EQCR_SIZE - 1));
    uint8_t ci = (uint8_t)(qm_in(EQCR_CI_CINH) & (QM_EQCR_SIZE - 1));




    if (pi != EQCR_PTR2IDX(eqcr->cursor))
        REPORT_ERROR(WARNING, E_INVALID_STATE, ("losing uncommitted EQCR entries"));
    if (ci != eqcr->ci)
        REPORT_ERROR(WARNING, E_INVALID_STATE, ("missing existing EQCR completions"));
    if (eqcr->ci != EQCR_PTR2IDX(eqcr->cursor))
        REPORT_ERROR(WARNING, E_INVALID_STATE, ("EQCR destroyed unquiesced"));
    __qm_portal_unbind(portal, QM_BIND_EQCR);
}
