#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int zprop_type_t ;
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  scalar_t__ zfs_prop_t ;
struct TYPE_3__ {char* zc_value; int /*<<< orphan*/  zc_name; scalar_t__ zc_cookie; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
#define  PROP_TYPE_INDEX 130 
#define  PROP_TYPE_NUMBER 129 
#define  PROP_TYPE_STRING 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ZFS_PROP_VERSION ; 
 scalar_t__ ZFS_PROP_VOLSIZE ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_SRC_INHERITED ; 
 int /*<<< orphan*/  ZPROP_SRC_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static int
FUNC13(zfs_cmd_t *zc)
{
	const char *propname = zc->zc_value;
	zfs_prop_t prop = FUNC8(propname);
	boolean_t received = zc->zc_cookie;
	zprop_source_t source = (received
	    ? ZPROP_SRC_NONE		/* revert to received value, if any */
	    : ZPROP_SRC_INHERITED);	/* explicitly inherit */

	if (received) {
		nvlist_t *dummy;
		nvpair_t *pair;
		zprop_type_t type;
		int err;

		/*
		 * zfs_prop_set_special() expects properties in the form of an
		 * nvpair with type info.
		 */
		if (prop == ZPROP_INVAL) {
			if (!FUNC12(propname))
				return (FUNC0(EINVAL));

			type = PROP_TYPE_STRING;
		} else if (prop == ZFS_PROP_VOLSIZE ||
		    prop == ZFS_PROP_VERSION) {
			return (FUNC0(EINVAL));
		} else {
			type = FUNC9(prop);
		}

		FUNC1(FUNC5(&dummy, NV_UNIQUE_NAME, KM_SLEEP) == 0);

		switch (type) {
		case PROP_TYPE_STRING:
			FUNC1(0 == FUNC3(dummy, propname, ""));
			break;
		case PROP_TYPE_NUMBER:
		case PROP_TYPE_INDEX:
			FUNC1(0 == FUNC4(dummy, propname, 0));
			break;
		default:
			FUNC6(dummy);
			return (FUNC0(EINVAL));
		}

		pair = FUNC7(dummy, NULL);
		err = FUNC11(zc->zc_name, source, pair);
		FUNC6(dummy);
		if (err != -1)
			return (err); /* special property already handled */
	} else {
		/*
		 * Only check this in the non-received case. We want to allow
		 * 'inherit -S' to revert non-inheritable properties like quota
		 * and reservation to the received or default values even though
		 * they are not considered inheritable.
		 */
		if (prop != ZPROP_INVAL && !FUNC10(prop))
			return (FUNC0(EINVAL));
	}

	/* property name has been validated by zfs_secpolicy_inherit_prop() */
	return (FUNC2(zc->zc_name, zc->zc_value, source));
}