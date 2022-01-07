
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr {scalar_t__ cmode; int ci; int cursor; } ;
struct qm_portal {struct qm_mr mr; } ;


 int ASSERT_COND (int) ;
 int MR_CI_CINH ;
 int MR_PTR2IDX (int ) ;
 scalar_t__ e_QmPortalMrCCI ;
 int qm_out (int ,int ) ;

__attribute__((used)) static __inline__ void qmPortalMrCciConsumeToCurrent(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;



    mr->ci = MR_PTR2IDX(mr->cursor);
    qm_out(MR_CI_CINH, mr->ci);
}
