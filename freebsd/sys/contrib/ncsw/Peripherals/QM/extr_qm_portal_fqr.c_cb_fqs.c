
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct qm_mr_entry const* t_Handle ;
struct qman_fq {scalar_t__ state; int flags; } ;
struct qm_mr_entry {int dummy; } ;


 int QMAN_FQ_STATE_ORL ;
 int UNUSED (struct qm_mr_entry const*) ;
 int drainRetiredFq (struct qman_fq*) ;
 scalar_t__ qman_fq_state_retired ;

__attribute__((used)) static void cb_fqs(t_Handle h_App,
                   t_Handle h_QmPortal,
                   struct qman_fq *p_Fq,
                   const struct qm_mr_entry *p_Msg)
{
    UNUSED(p_Msg);
    UNUSED(h_App);
    UNUSED(h_QmPortal);

    if (p_Fq->state == qman_fq_state_retired &&
        !(p_Fq->flags & QMAN_FQ_STATE_ORL))
        drainRetiredFq(p_Fq);
}
