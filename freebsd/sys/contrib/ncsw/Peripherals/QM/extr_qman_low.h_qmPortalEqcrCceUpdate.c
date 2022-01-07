
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct qm_eqcr {scalar_t__ cmode; int available; scalar_t__ ci; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int ASSERT_COND (int) ;
 int EQCR_CI ;
 int QM_EQCR_SIZE ;
 scalar_t__ cyc_diff (int,scalar_t__,scalar_t__) ;
 scalar_t__ e_QmPortalEqcrCCE ;
 int qm_cl_in (int ) ;
 int qm_cl_invalidate (int ) ;

__attribute__((used)) static __inline__ uint8_t qmPortalEqcrCceUpdate(struct qm_portal *portal)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
    uint8_t diff, old_ci = eqcr->ci;



    eqcr->ci = (uint8_t)(qm_cl_in(EQCR_CI) & (QM_EQCR_SIZE - 1));
    qm_cl_invalidate(EQCR_CI);
    diff = cyc_diff(QM_EQCR_SIZE, old_ci, eqcr->ci);
    eqcr->available += diff;
    return diff;
}
