
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_dqrr {scalar_t__ cmode; int ci; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int ASSERT_COND (int) ;
 scalar_t__ e_QmPortalDqrrDCA ;

__attribute__((used)) static __inline__ uint8_t qm_dqrr_get_ci(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;




    return dqrr->ci;
}
