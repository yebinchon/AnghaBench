
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr_entry {int dummy; } ;
struct qm_eqcr {int vbit; struct qm_eqcr_entry* cursor; } ;


 struct qm_eqcr_entry* EQCR_CARRYCLEAR (struct qm_eqcr_entry*) ;
 int QM_EQCR_VERB_VBIT ;

__attribute__((used)) static __inline__ void EQCR_INC(struct qm_eqcr *eqcr)
{



    struct qm_eqcr_entry *partial = eqcr->cursor + 1;
    eqcr->cursor = EQCR_CARRYCLEAR(partial);
    if (partial != eqcr->cursor)
        eqcr->vbit ^= QM_EQCR_VERB_VBIT;
}
