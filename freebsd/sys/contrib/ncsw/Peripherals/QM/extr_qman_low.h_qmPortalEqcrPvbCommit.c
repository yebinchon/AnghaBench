
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_eqcr {scalar_t__ pmode; int vbit; scalar_t__ busy; int available; struct qm_eqcr_entry* cursor; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int __dont_write_directly__verb; } ;


 int ASSERT_COND (int) ;
 int EQCR_COMMIT_CHECKS (struct qm_eqcr*) ;
 int EQCR_INC (struct qm_eqcr*) ;
 int dcbf_64 (struct qm_eqcr_entry*) ;
 scalar_t__ e_QmPortalPVB ;
 int rmb () ;

__attribute__((used)) static __inline__ void qmPortalEqcrPvbCommit(struct qm_portal *portal, uint8_t myverb)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;
    struct qm_eqcr_entry *eqcursor;




    rmb();
    eqcursor = eqcr->cursor;
    eqcursor->__dont_write_directly__verb = (uint8_t)(myverb | eqcr->vbit);
    dcbf_64(eqcursor);
    EQCR_INC(eqcr);
    eqcr->available--;



}
