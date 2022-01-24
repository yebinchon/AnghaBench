#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  pr_cbs; } ;
typedef  TYPE_1__ dsl_prop_record_t ;
typedef  int /*<<< orphan*/  (* dsl_prop_changed_cb_t ) (void*,int /*<<< orphan*/ ) ;
struct TYPE_14__ {void* cbr_arg; int /*<<< orphan*/  (* cbr_func ) (void*,int /*<<< orphan*/ ) ;TYPE_1__* cbr_pr; TYPE_4__* cbr_ds; } ;
typedef  TYPE_2__ dsl_prop_cb_record_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_15__ {int /*<<< orphan*/  dd_lock; int /*<<< orphan*/ * dd_pool; } ;
typedef  TYPE_3__ dsl_dir_t ;
struct TYPE_16__ {int /*<<< orphan*/  ds_prop_cbs; TYPE_3__* ds_dir; } ;
typedef  TYPE_4__ dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_4__*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_3__*,char const*) ; 
 TYPE_1__* FUNC4 (TYPE_3__*,char const*) ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 

int
FUNC10(dsl_dataset_t *ds, const char *propname,
    dsl_prop_changed_cb_t *callback, void *cbarg)
{
	dsl_dir_t *dd = ds->ds_dir;
	dsl_pool_t *dp = dd->dd_pool;
	uint64_t value;
	dsl_prop_record_t *pr;
	dsl_prop_cb_record_t *cbr;
	int err;

	FUNC0(FUNC1(dp));

	err = FUNC2(ds, propname, &value);
	if (err != 0)
		return (err);

	cbr = FUNC5(sizeof (dsl_prop_cb_record_t), KM_SLEEP);
	cbr->cbr_ds = ds;
	cbr->cbr_func = *callback;
	cbr->cbr_arg = cbarg;

	FUNC7(&dd->dd_lock);
	pr = FUNC4(dd, propname);
	if (pr == NULL)
		pr = FUNC3(dd, propname);
	cbr->cbr_pr = pr;
	FUNC6(&pr->pr_cbs, cbr);
	FUNC6(&ds->ds_prop_cbs, cbr);
	FUNC8(&dd->dd_lock);

	cbr->cbr_func(cbr->cbr_arg, value);
	return (0);
}