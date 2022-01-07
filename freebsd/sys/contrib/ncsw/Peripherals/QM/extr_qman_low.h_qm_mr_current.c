
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_mr {struct qm_mr_entry* cursor; int fill; } ;
struct qm_portal {struct qm_mr mr; } ;
struct qm_mr_entry {int dummy; } ;



__attribute__((used)) static __inline__ struct qm_mr_entry *qm_mr_current(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;
    if (!mr->fill)
        return ((void*)0);
    return mr->cursor;
}
