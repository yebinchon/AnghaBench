
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct qm_eqcr {scalar_t__ cmode; int available; scalar_t__ ci; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;


 int ASSERT_COND (int) ;
 int EQCR_CI_CINH ;
 int QM_EQCR_SIZE ;
 scalar_t__ cyc_diff (int,scalar_t__,scalar_t__) ;
 scalar_t__ e_QmPortalEqcrCCI ;
 int qm_in (int ) ;

__attribute__((used)) static __inline__ uint8_t qmPortalEqcrCciUpdate(struct qm_portal *portal)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
    uint8_t diff, old_ci = eqcr->ci;



    eqcr->ci = (uint8_t)(qm_in(EQCR_CI_CINH) & (QM_EQCR_SIZE - 1));
    diff = cyc_diff(QM_EQCR_SIZE, old_ci, eqcr->ci);
    eqcr->available += diff;
    return diff;
}
