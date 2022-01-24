#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ dl_object; int /*<<< orphan*/ * dl_os; int /*<<< orphan*/ * dl_phys; int /*<<< orphan*/ * dl_dbuf; int /*<<< orphan*/  dl_lock; int /*<<< orphan*/  dl_tree; scalar_t__ dl_havetree; int /*<<< orphan*/  dl_bpobj; scalar_t__ dl_oldfmt; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
struct TYPE_9__ {int /*<<< orphan*/  dle_bpobj; } ;
typedef  TYPE_2__ dsl_deadlist_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(dsl_deadlist_t *dl)
{
	void *cookie = NULL;
	dsl_deadlist_entry_t *dle;

	FUNC0(FUNC5(dl));

	if (dl->dl_oldfmt) {
		dl->dl_oldfmt = B_FALSE;
		FUNC3(&dl->dl_bpobj);
		dl->dl_os = NULL;
		dl->dl_object = 0;
		return;
	}

	if (dl->dl_havetree) {
		while ((dle = FUNC2(&dl->dl_tree, &cookie))
		    != NULL) {
			FUNC3(&dle->dle_bpobj);
			FUNC6(dle, sizeof (*dle));
		}
		FUNC1(&dl->dl_tree);
	}
	FUNC4(dl->dl_dbuf, dl);
	FUNC7(&dl->dl_lock);
	dl->dl_dbuf = NULL;
	dl->dl_phys = NULL;
	dl->dl_os = NULL;
	dl->dl_object = 0;
}