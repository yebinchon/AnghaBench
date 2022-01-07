
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_mr {int cursor; } ;
struct qm_portal {struct qm_mr mr; } ;


 int MR_PTR2IDX (int ) ;

__attribute__((used)) static __inline__ uint8_t qm_mr_cursor(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;
    return MR_PTR2IDX(mr->cursor);
}
