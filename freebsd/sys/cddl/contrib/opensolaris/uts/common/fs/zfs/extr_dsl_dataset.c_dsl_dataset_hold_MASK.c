#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
struct TYPE_7__ {scalar_t__* ds_snapname; int /*<<< orphan*/  ds_lock; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_8__ {scalar_t__ dd_head_dataset_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,void*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 
 int FUNC5 (TYPE_1__*,char const*,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char const*,int) ; 

int
FUNC13(dsl_pool_t *dp, const char *name,
    void *tag, dsl_dataset_t **dsp)
{
	dsl_dir_t *dd;
	const char *snapname;
	uint64_t obj;
	int err = 0;
	dsl_dataset_t *ds;

	err = FUNC6(dp, name, FTAG, &dd, &snapname);
	if (err != 0)
		return (err);

	FUNC0(FUNC9(dp));
	obj = FUNC7(dd)->dd_head_dataset_obj;
	if (obj != 0)
		err = FUNC3(dp, obj, tag, &ds);
	else
		err = FUNC1(ENOENT);

	/* we may be looking for a snapshot */
	if (err == 0 && snapname != NULL) {
		dsl_dataset_t *snap_ds;

		if (*snapname++ != '@') {
			FUNC4(ds, tag);
			FUNC8(dd, FTAG);
			return (FUNC1(ENOENT));
		}

		FUNC2("looking for snapshot '%s'\n", snapname);
		err = FUNC5(ds, snapname, &obj);
		if (err == 0)
			err = FUNC3(dp, obj, tag, &snap_ds);
		FUNC4(ds, tag);

		if (err == 0) {
			FUNC10(&snap_ds->ds_lock);
			if (snap_ds->ds_snapname[0] == 0)
				(void) FUNC12(snap_ds->ds_snapname, snapname,
				    sizeof (snap_ds->ds_snapname));
			FUNC11(&snap_ds->ds_lock);
			ds = snap_ds;
		}
	}
	if (err == 0)
		*dsp = ds;
	FUNC8(dd, FTAG);
	return (err);
}