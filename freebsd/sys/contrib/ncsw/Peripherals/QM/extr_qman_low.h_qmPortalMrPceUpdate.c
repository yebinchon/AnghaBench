
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct qm_mr {scalar_t__ pmode; int fill; scalar_t__ pi; } ;
struct qm_portal {struct qm_mr mr; } ;


 int ASSERT_COND (int) ;
 int MR_PI ;
 int QM_MR_SIZE ;
 scalar_t__ cyc_diff (int,scalar_t__,scalar_t__) ;
 scalar_t__ e_QmPortalPCE ;
 int qm_cl_in (int ) ;

__attribute__((used)) static __inline__ uint8_t qmPortalMrPceUpdate(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;
    uint8_t diff, old_pi = mr->pi;



    mr->pi = (uint8_t)(qm_cl_in(MR_PI) & (QM_MR_SIZE - 1));
    diff = cyc_diff(QM_MR_SIZE, old_pi, mr->pi);
    mr->fill += diff;
    return diff;
}
