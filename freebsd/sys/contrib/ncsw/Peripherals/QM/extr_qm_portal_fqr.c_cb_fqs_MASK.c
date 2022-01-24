#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  struct qm_mr_entry const* t_Handle ;
struct qman_fq {scalar_t__ state; int flags; } ;
struct qm_mr_entry {int dummy; } ;

/* Variables and functions */
 int QMAN_FQ_STATE_ORL ; 
 int /*<<< orphan*/  FUNC0 (struct qm_mr_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (struct qman_fq*) ; 
 scalar_t__ qman_fq_state_retired ; 

__attribute__((used)) static void FUNC2(t_Handle                   h_App,
                   t_Handle                   h_QmPortal,
                   struct qman_fq             *p_Fq,
                   const struct qm_mr_entry   *p_Msg)
{
    FUNC0(p_Msg);
    FUNC0(h_App);
    FUNC0(h_QmPortal);

    if (p_Fq->state == qman_fq_state_retired &&
        !(p_Fq->flags & QMAN_FQ_STATE_ORL))
        FUNC1(p_Fq);
}