
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr {int cursor; } ;
struct qm_portal {struct qm_mr mr; } ;


 int dcbt_ro (int ) ;

__attribute__((used)) static __inline__ void qm_mr_current_prefetch(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;
    dcbt_ro(mr->cursor);
}
