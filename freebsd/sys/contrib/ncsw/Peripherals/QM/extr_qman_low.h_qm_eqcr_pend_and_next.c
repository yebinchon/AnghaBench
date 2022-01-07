
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_eqcr {int busy; scalar_t__ pmode; int available; int vbit; struct qm_eqcr_entry* cursor; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int __dont_write_directly__verb; } ;


 int ASSERT_COND (int) ;
 int EQCR_INC (struct qm_eqcr*) ;
 int dcbf_64 (struct qm_eqcr_entry*) ;
 int dcbz_64 (struct qm_eqcr_entry*) ;
 scalar_t__ e_QmPortalPVB ;

__attribute__((used)) static __inline__ struct qm_eqcr_entry *qm_eqcr_pend_and_next(struct qm_portal *portal, uint8_t myverb)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;




    if (eqcr->available == 1)
        return ((void*)0);
    eqcr->cursor->__dont_write_directly__verb = (uint8_t)(myverb | eqcr->vbit);
    dcbf_64(eqcr->cursor);
    EQCR_INC(eqcr);
    eqcr->available--;
    dcbz_64(eqcr->cursor);
    return eqcr->cursor;
}
