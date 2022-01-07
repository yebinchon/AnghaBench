
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_mr {int pi; scalar_t__ pmode; int vbit; int fill; int ring; } ;
struct qm_portal {struct qm_mr mr; } ;
struct qm_mr_entry {int verb; } ;


 int ASSERT_COND (int) ;
 int QM_MR_SIZE ;
 int QM_MR_VERB_VBIT ;
 int dcbit_ro (struct qm_mr_entry*) ;
 scalar_t__ e_QmPortalPVB ;
 struct qm_mr_entry* ptr_ADD (int ,int ) ;
 int qm_cl (int) ;

__attribute__((used)) static __inline__ void qmPortalMrPvbUpdate(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;
    struct qm_mr_entry *res = ptr_ADD(mr->ring, qm_cl(mr->pi));



    dcbit_ro(ptr_ADD(mr->ring, qm_cl(mr->pi)));
    if ((res->verb & QM_MR_VERB_VBIT) == mr->vbit) {
        mr->pi = (uint8_t)((mr->pi + 1) & (QM_MR_SIZE - 1));
        if (!mr->pi)
            mr->vbit ^= QM_MR_VERB_VBIT;
        mr->fill++;
    }
}
