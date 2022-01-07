
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eqcr {int busy; struct qm_eqcr_entry* cursor; int available; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int dummy; } ;


 int ASSERT_COND (int) ;
 int dcbz_64 (struct qm_eqcr_entry*) ;

__attribute__((used)) static __inline__ struct qm_eqcr_entry *qm_eqcr_start(struct qm_portal *portal)
{
    register struct qm_eqcr *eqcr = &portal->eqcr;



    if (!eqcr->available)
        return ((void*)0);



    dcbz_64(eqcr->cursor);
    return eqcr->cursor;
}
