#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_vstate_t ;
struct TYPE_6__ {scalar_t__ dtp_refcnt; TYPE_2__* dtp_difo; } ;
typedef  TYPE_1__ dtrace_predicate_t ;
struct TYPE_7__ {scalar_t__ dtdo_refcnt; } ;
typedef  TYPE_2__ dtrace_difo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4(dtrace_predicate_t *pred, dtrace_vstate_t *vstate)
{
	dtrace_difo_t *dp = pred->dtp_difo;

	FUNC0(FUNC1(&dtrace_lock));
	FUNC0(dp != NULL && dp->dtdo_refcnt != 0);
	FUNC0(pred->dtp_refcnt > 0);

	if (--pred->dtp_refcnt == 0) {
		FUNC2(pred->dtp_difo, vstate);
		FUNC3(pred, sizeof (dtrace_predicate_t));
	}
}