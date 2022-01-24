#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int dsl_prop_getflags_t ;
struct TYPE_12__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_13__ {struct TYPE_13__* dd_parent; TYPE_1__* dd_pool; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_14__ {TYPE_2__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_3__ dsl_dataset_t ;
struct TYPE_16__ {scalar_t__ ds_props_obj; } ;
struct TYPE_15__ {scalar_t__ dd_props_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DSL_PROP_GET_INHERITING ; 
 int DSL_PROP_GET_LOCAL ; 
 int DSL_PROP_GET_RECEIVED ; 
 int DSL_PROP_GET_SNAPSHOT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 TYPE_9__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 TYPE_6__* FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(dsl_dataset_t *ds, nvlist_t **nvp,
    dsl_prop_getflags_t flags)
{
	dsl_dir_t *dd = ds->ds_dir;
	dsl_pool_t *dp = dd->dd_pool;
	objset_t *mos = dp->dp_meta_objset;
	int err = 0;
	char setpoint[ZFS_MAX_DATASET_NAME_LEN];

	FUNC1(FUNC8(nvp, NV_UNIQUE_NAME, KM_SLEEP) == 0);

	if (ds->ds_is_snapshot)
		flags |= DSL_PROP_GET_SNAPSHOT;

	FUNC0(FUNC6(dp));

	if (FUNC3(ds)->ds_props_obj != 0) {
		FUNC0(flags & DSL_PROP_GET_SNAPSHOT);
		FUNC2(ds, setpoint);
		err = FUNC7(mos,
		    FUNC3(ds)->ds_props_obj, setpoint, flags, *nvp);
		if (err)
			goto out;
	}

	for (; dd != NULL; dd = dd->dd_parent) {
		if (dd != ds->ds_dir || (flags & DSL_PROP_GET_SNAPSHOT)) {
			if (flags & (DSL_PROP_GET_LOCAL |
			    DSL_PROP_GET_RECEIVED))
				break;
			flags |= DSL_PROP_GET_INHERITING;
		}
		FUNC4(dd, setpoint);
		err = FUNC7(mos,
		    FUNC5(dd)->dd_props_zapobj, setpoint, flags, *nvp);
		if (err)
			break;
	}
out:
	return (err);
}