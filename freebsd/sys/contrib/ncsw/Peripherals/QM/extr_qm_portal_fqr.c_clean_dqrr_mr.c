
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_LowQmPortal; } ;
typedef TYPE_1__ t_QmPortal ;
struct qm_mr_entry {int dummy; } ;
struct qm_dqrr_entry {int dummy; } ;


 int XX_UDelay (int) ;
 int qmPortalDqrrCciConsume (int ,int) ;
 int qmPortalDqrrPvbPrefetch (int ) ;
 int qmPortalDqrrPvbUpdate (int ) ;
 int qmPortalMrCciConsume (int ,int) ;
 int qmPortalMrPvbUpdate (int ) ;
 struct qm_dqrr_entry* qm_dqrr_current (int ) ;
 int qm_dqrr_next (int ) ;
 int qm_dqrr_sdqcr_set (int ,int ) ;
 int qm_dqrr_vdqcr_set (int ,int ) ;
 struct qm_mr_entry* qm_mr_current (int ) ;
 int qm_mr_next (int ) ;

__attribute__((used)) static void clean_dqrr_mr(t_QmPortal *p_QmPortal)
{
    struct qm_dqrr_entry *p_Dq;
    struct qm_mr_entry *p_Msg;
    int idle = 0;

    qm_dqrr_sdqcr_set(p_QmPortal->p_LowQmPortal, 0);
    qm_dqrr_vdqcr_set(p_QmPortal->p_LowQmPortal, 0);
drain_loop:
    qmPortalDqrrPvbPrefetch(p_QmPortal->p_LowQmPortal);
    qmPortalDqrrPvbUpdate(p_QmPortal->p_LowQmPortal);
    qmPortalMrPvbUpdate(p_QmPortal->p_LowQmPortal);
    p_Dq = qm_dqrr_current(p_QmPortal->p_LowQmPortal);
    p_Msg = qm_mr_current(p_QmPortal->p_LowQmPortal);
    if (p_Dq) {
        qm_dqrr_next(p_QmPortal->p_LowQmPortal);
        qmPortalDqrrCciConsume(p_QmPortal->p_LowQmPortal, 1);
    }
    if (p_Msg) {
    qm_mr_next(p_QmPortal->p_LowQmPortal);
        qmPortalMrCciConsume(p_QmPortal->p_LowQmPortal, 1);
    }
    if (!p_Dq && !p_Msg) {
    if (++idle < 5) {
    XX_UDelay(1000);
    goto drain_loop;
    }
    } else {
    idle = 0;
    goto drain_loop;
    }
}
