
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mc {scalar_t__ state; struct qm_mc_command* cr; } ;
struct qm_portal {struct qm_mc mc; } ;
struct qm_mc_command {int dummy; } ;


 int ASSERT_COND (int) ;
 int dcbz_64 (struct qm_mc_command*) ;
 scalar_t__ mc_idle ;
 scalar_t__ mc_user ;

__attribute__((used)) static __inline__ struct qm_mc_command *qm_mc_start(struct qm_portal *portal)
{
    register struct qm_mc *mc = &portal->mc;




    dcbz_64(mc->cr);
    return mc->cr;
}
