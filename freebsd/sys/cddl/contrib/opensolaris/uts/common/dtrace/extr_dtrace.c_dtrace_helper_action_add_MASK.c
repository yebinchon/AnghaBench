#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ dtvs_nlocals; } ;
typedef  TYPE_2__ dtrace_vstate_t ;
struct TYPE_15__ {int /*<<< orphan*/ * dtp_difo; } ;
typedef  TYPE_3__ dtrace_predicate_t ;
struct TYPE_16__ {TYPE_5__** dthps_actions; int /*<<< orphan*/  dthps_generation; TYPE_2__ dthps_vstate; } ;
typedef  TYPE_4__ dtrace_helpers_t ;
struct TYPE_17__ {int dtha_nactions; struct TYPE_17__* dtha_next; int /*<<< orphan*/ ** dtha_actions; int /*<<< orphan*/ * dtha_predicate; int /*<<< orphan*/  dtha_generation; } ;
typedef  TYPE_5__ dtrace_helper_action_t ;
struct TYPE_13__ {TYPE_3__* dtpdd_predicate; } ;
struct TYPE_18__ {TYPE_7__* dted_action; TYPE_1__ dted_pred; } ;
typedef  TYPE_6__ dtrace_ecbdesc_t ;
typedef  int /*<<< orphan*/  dtrace_difo_t ;
struct TYPE_19__ {scalar_t__ dtad_kind; int /*<<< orphan*/ * dtad_difo; struct TYPE_19__* dtad_next; } ;
typedef  TYPE_7__ dtrace_actdesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DTRACEACT_DIFEXPR ; 
 int DTRACE_NHELPER_ACTIONS ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_2__*) ; 
 int dtrace_helper_actions_max ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ dtrace_helptrace_next ; 
 scalar_t__ dtrace_helptrace_nlocals ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(int which, dtrace_ecbdesc_t *ep,
    dtrace_helpers_t *help)
{
	dtrace_helper_action_t *helper, *last;
	dtrace_actdesc_t *act;
	dtrace_vstate_t *vstate;
	dtrace_predicate_t *pred;
	int count = 0, nactions = 0, i;

	if (which < 0 || which >= DTRACE_NHELPER_ACTIONS)
		return (EINVAL);

	last = help->dthps_actions[which];
	vstate = &help->dthps_vstate;

	for (count = 0; last != NULL; last = last->dtha_next) {
		count++;
		if (last->dtha_next == NULL)
			break;
	}

	/*
	 * If we already have dtrace_helper_actions_max helper actions for this
	 * helper action type, we'll refuse to add a new one.
	 */
	if (count >= dtrace_helper_actions_max)
		return (ENOSPC);

	helper = FUNC4(sizeof (dtrace_helper_action_t), KM_SLEEP);
	helper->dtha_generation = help->dthps_generation;

	if ((pred = ep->dted_pred.dtpdd_predicate) != NULL) {
		FUNC0(pred->dtp_difo != NULL);
		FUNC1(pred->dtp_difo);
		helper->dtha_predicate = pred->dtp_difo;
	}

	for (act = ep->dted_action; act != NULL; act = act->dtad_next) {
		if (act->dtad_kind != DTRACEACT_DIFEXPR)
			goto err;

		if (act->dtad_difo == NULL)
			goto err;

		nactions++;
	}

	helper->dtha_actions = FUNC4(sizeof (dtrace_difo_t *) *
	    (helper->dtha_nactions = nactions), KM_SLEEP);

	for (act = ep->dted_action, i = 0; act != NULL; act = act->dtad_next) {
		FUNC1(act->dtad_difo);
		helper->dtha_actions[i++] = act->dtad_difo;
	}

	if (!FUNC3(helper))
		goto err;

	if (last == NULL) {
		help->dthps_actions[which] = helper;
	} else {
		last->dtha_next = helper;
	}

	if (vstate->dtvs_nlocals > dtrace_helptrace_nlocals) {
		dtrace_helptrace_nlocals = vstate->dtvs_nlocals;
		dtrace_helptrace_next = 0;
	}

	return (0);
err:
	FUNC2(helper, vstate);
	return (EINVAL);
}