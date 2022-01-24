#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  dtrace_vstate_t ;
struct TYPE_10__ {scalar_t__ dte_size; TYPE_3__* dte_action_last; TYPE_3__* dte_action; TYPE_5__* dte_state; } ;
typedef  TYPE_2__ dtrace_ecb_t ;
typedef  int /*<<< orphan*/  dtrace_difo_t ;
struct TYPE_9__ {int /*<<< orphan*/  dtrd_format; } ;
struct TYPE_11__ {int dta_refcnt; int /*<<< orphan*/  dta_kind; int /*<<< orphan*/ * dta_difo; TYPE_1__ dta_rec; struct TYPE_11__* dta_next; } ;
typedef  TYPE_3__ dtrace_action_t ;
struct TYPE_12__ {int /*<<< orphan*/  dts_vstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC6(dtrace_ecb_t *ecb)
{
	dtrace_action_t *act = ecb->dte_action, *next;
	dtrace_vstate_t *vstate = &ecb->dte_state->dts_vstate;
	dtrace_difo_t *dp;
	uint16_t format;

	if (act != NULL && act->dta_refcnt > 1) {
		FUNC0(act->dta_next == NULL || act->dta_next->dta_refcnt == 1);
		act->dta_refcnt--;
	} else {
		for (; act != NULL; act = next) {
			next = act->dta_next;
			FUNC0(next != NULL || act == ecb->dte_action_last);
			FUNC0(act->dta_refcnt == 1);

			if ((format = act->dta_rec.dtrd_format) != 0)
				FUNC4(ecb->dte_state, format);

			if ((dp = act->dta_difo) != NULL)
				FUNC2(dp, vstate);

			if (FUNC1(act->dta_kind)) {
				FUNC3(ecb, act);
			} else {
				FUNC5(act, sizeof (dtrace_action_t));
			}
		}
	}

	ecb->dte_action = NULL;
	ecb->dte_action_last = NULL;
	ecb->dte_size = 0;
}