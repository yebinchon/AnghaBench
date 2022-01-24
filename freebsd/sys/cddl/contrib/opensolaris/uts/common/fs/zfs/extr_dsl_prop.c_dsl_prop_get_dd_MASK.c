#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_7__ {struct TYPE_7__* dd_parent; TYPE_3__* dd_pool; } ;
typedef  TYPE_1__ dsl_dir_t ;
typedef  int boolean_t ;
struct TYPE_9__ {int /*<<< orphan*/  dd_props_zapobj; } ;
struct TYPE_8__ {int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int ENOENT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ZPROP_INHERIT_SUFFIX ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_RECVD_SUFFIX ; 
 int /*<<< orphan*/  ZPROP_SOURCE_VAL_RECVD ; 
 int FUNC2 (scalar_t__,int,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 TYPE_4__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 char* FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int,void*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

int
FUNC13(dsl_dir_t *dd, const char *propname,
    int intsz, int numints, void *buf, char *setpoint, boolean_t snapshot)
{
	int err = ENOENT;
	dsl_dir_t *target = dd;
	objset_t *mos = dd->dd_pool->dp_meta_objset;
	zfs_prop_t prop;
	boolean_t inheritable;
	boolean_t inheriting = B_FALSE;
	char *inheritstr;
	char *recvdstr;

	FUNC0(FUNC5(dd->dd_pool));

	if (setpoint)
		setpoint[0] = '\0';

	prop = FUNC11(propname);
	inheritable = (prop == ZPROP_INVAL || FUNC12(prop));
	inheritstr = FUNC6("%s%s", propname, ZPROP_INHERIT_SUFFIX);
	recvdstr = FUNC6("%s%s", propname, ZPROP_RECVD_SUFFIX);

	/*
	 * Note: dd may become NULL, therefore we shouldn't dereference it
	 * after this loop.
	 */
	for (; dd != NULL; dd = dd->dd_parent) {
		if (dd != target || snapshot) {
			if (!inheritable)
				break;
			inheriting = B_TRUE;
		}

		/* Check for a local value. */
		err = FUNC10(mos, FUNC4(dd)->dd_props_zapobj,
		    propname, intsz, numints, buf);
		if (err != ENOENT) {
			if (setpoint != NULL && err == 0)
				FUNC3(dd, setpoint);
			break;
		}

		/*
		 * Skip the check for a received value if there is an explicit
		 * inheritance entry.
		 */
		err = FUNC9(mos, FUNC4(dd)->dd_props_zapobj,
		    inheritstr);
		if (err != 0 && err != ENOENT)
			break;

		if (err == ENOENT) {
			/* Check for a received value. */
			err = FUNC10(mos, FUNC4(dd)->dd_props_zapobj,
			    recvdstr, intsz, numints, buf);
			if (err != ENOENT) {
				if (setpoint != NULL && err == 0) {
					if (inheriting) {
						FUNC3(dd, setpoint);
					} else {
						(void) FUNC7(setpoint,
						    ZPROP_SOURCE_VAL_RECVD);
					}
				}
				break;
			}
		}

		/*
		 * If we found an explicit inheritance entry, err is zero even
		 * though we haven't yet found the value, so reinitializing err
		 * at the end of the loop (instead of at the beginning) ensures
		 * that err has a valid post-loop value.
		 */
		err = FUNC1(ENOENT);
	}

	if (err == ENOENT)
		err = FUNC2(prop, intsz, numints, buf);

	FUNC8(inheritstr);
	FUNC8(recvdstr);

	return (err);
}