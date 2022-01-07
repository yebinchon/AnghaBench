
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qm_dqrr {int cursor; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;


 int DQRR_PTR2IDX (int ) ;

__attribute__((used)) static __inline__ uint8_t qm_dqrr_cursor(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;
    return DQRR_PTR2IDX(dqrr->cursor);
}
