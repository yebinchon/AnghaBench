#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_8__ {int /*<<< orphan*/  ds_is_snapshot; TYPE_3__* ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;
typedef  int boolean_t ;
struct TYPE_11__ {scalar_t__ ds_props_obj; } ;
struct TYPE_10__ {int /*<<< orphan*/ * dp_meta_objset; } ;
struct TYPE_9__ {TYPE_4__* dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  ZPROP_INHERIT_SUFFIX ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_RECVD_SUFFIX ; 
 int /*<<< orphan*/  ZPROP_SOURCE_VAL_RECVD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_5__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_3__*,char const*,int,int,void*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,void*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

int
FUNC12(dsl_dataset_t *ds, const char *propname,
    int intsz, int numints, void *buf, char *setpoint)
{
	zfs_prop_t prop = FUNC10(propname);
	boolean_t inheritable;
	uint64_t zapobj;

	FUNC0(FUNC3(ds->ds_dir->dd_pool));
	inheritable = (prop == ZPROP_INVAL || FUNC11(prop));
	zapobj = FUNC2(ds)->ds_props_obj;

	if (zapobj != 0) {
		objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
		int err;

		FUNC0(ds->ds_is_snapshot);

		/* Check for a local value. */
		err = FUNC9(mos, zapobj, propname, intsz, numints, buf);
		if (err != ENOENT) {
			if (setpoint != NULL && err == 0)
				FUNC1(ds, setpoint);
			return (err);
		}

		/*
		 * Skip the check for a received value if there is an explicit
		 * inheritance entry.
		 */
		if (inheritable) {
			char *inheritstr = FUNC5("%s%s", propname,
			    ZPROP_INHERIT_SUFFIX);
			err = FUNC8(mos, zapobj, inheritstr);
			FUNC7(inheritstr);
			if (err != 0 && err != ENOENT)
				return (err);
		}

		if (err == ENOENT) {
			/* Check for a received value. */
			char *recvdstr = FUNC5("%s%s", propname,
			    ZPROP_RECVD_SUFFIX);
			err = FUNC9(mos, zapobj, recvdstr,
			    intsz, numints, buf);
			FUNC7(recvdstr);
			if (err != ENOENT) {
				if (setpoint != NULL && err == 0)
					(void) FUNC6(setpoint,
					    ZPROP_SOURCE_VAL_RECVD);
				return (err);
			}
		}
	}

	return (FUNC4(ds->ds_dir, propname,
	    intsz, numints, buf, setpoint, ds->ds_is_snapshot));
}