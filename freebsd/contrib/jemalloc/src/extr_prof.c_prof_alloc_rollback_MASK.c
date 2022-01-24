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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  prof_tdata_t ;
struct TYPE_7__ {int prepared; TYPE_1__* tdata; } ;
typedef  TYPE_2__ prof_tctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(tsd_t *tsd, prof_tctx_t *tctx, bool updated) {
	prof_tdata_t *tdata;

	FUNC0(config_prof);

	if (updated) {
		/*
		 * Compute a new sample threshold.  This isn't very important in
		 * practice, because this function is rarely executed, so the
		 * potential for sample bias is minimal except in contrived
		 * programs.
		 */
		tdata = FUNC6(tsd, true);
		if (tdata != NULL) {
			FUNC3(tdata);
		}
	}

	if ((uintptr_t)tctx > (uintptr_t)1U) {
		FUNC1(FUNC7(tsd), tctx->tdata->lock);
		tctx->prepared = false;
		if (FUNC5(FUNC7(tsd), tctx)) {
			FUNC4(tsd, tctx);
		} else {
			FUNC2(FUNC7(tsd), tctx->tdata->lock);
		}
	}
}