#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {void* cbr_arg; TYPE_1__* cbr_pr; } ;
typedef  TYPE_2__ dsl_prop_cb_record_t ;
struct TYPE_13__ {int /*<<< orphan*/  dd_lock; } ;
typedef  TYPE_3__ dsl_dir_t ;
struct TYPE_14__ {int /*<<< orphan*/  ds_prop_cbs; TYPE_3__* ds_dir; } ;
typedef  TYPE_4__ dsl_dataset_t ;
struct TYPE_11__ {int /*<<< orphan*/  pr_cbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(dsl_dataset_t *ds, void *cbarg)
{
	dsl_prop_cb_record_t *cbr, *next_cbr;

	dsl_dir_t *dd = ds->ds_dir;

	FUNC4(&dd->dd_lock);
	next_cbr = FUNC1(&ds->ds_prop_cbs);
	while (next_cbr != NULL) {
		cbr = next_cbr;
		next_cbr = FUNC2(&ds->ds_prop_cbs, cbr);
		if (cbr->cbr_arg == cbarg) {
			FUNC3(&ds->ds_prop_cbs, cbr);
			FUNC3(&cbr->cbr_pr->pr_cbs, cbr);
			FUNC0(cbr, sizeof (dsl_prop_cb_record_t));
		}
	}
	FUNC5(&dd->dd_lock);
}