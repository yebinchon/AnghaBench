
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_mr {int fill; int cursor; } ;
struct qm_portal {struct qm_mr mr; } ;


 int ASSERT_COND (int ) ;
 int MR_INC (int ) ;

__attribute__((used)) static __inline__ uint8_t qm_mr_next(struct qm_portal *portal)
{
    register struct qm_mr *mr = &portal->mr;



    mr->cursor = MR_INC(mr->cursor);
    return --mr->fill;
}
