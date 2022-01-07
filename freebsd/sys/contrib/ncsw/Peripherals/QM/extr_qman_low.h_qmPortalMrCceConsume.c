
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_mr {scalar_t__ cmode; int ci; } ;
struct qm_portal {struct qm_mr mr; } ;


 int ASSERT_COND (int) ;
 int MR_CI ;
 int QM_MR_SIZE ;
 scalar_t__ e_QmPortalMrCCE ;
 int qm_cl_out (int ,int) ;

__attribute__((used)) static __inline__ void qmPortalMrCceConsume(struct qm_portal *portal, uint8_t num)
{
    register struct qm_mr *mr = &portal->mr;



    mr->ci = (uint8_t)((mr->ci + num) & (QM_MR_SIZE - 1));
    qm_cl_out(MR_CI, mr->ci);
}
