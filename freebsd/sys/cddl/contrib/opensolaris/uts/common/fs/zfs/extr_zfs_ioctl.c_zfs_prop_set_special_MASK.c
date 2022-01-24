#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int zfs_prop_t ;
struct TYPE_5__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ PROP_TYPE_STRING ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  ZFS_PROP_FILESYSTEM_LIMIT 135 
#define  ZFS_PROP_QUOTA 134 
#define  ZFS_PROP_REFQUOTA 133 
#define  ZFS_PROP_REFRESERVATION 132 
#define  ZFS_PROP_RESERVATION 131 
#define  ZFS_PROP_SNAPSHOT_LIMIT 130 
#define  ZFS_PROP_VERSION 129 
#define  ZFS_PROP_VOLSIZE 128 
 int /*<<< orphan*/  ZPL_VERSION_USERSPACE ; 
 int ZPROP_INVAL ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (char const*) ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (char const*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC20 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC23(const char *dsname, zprop_source_t source,
    nvpair_t *pair)
{
	const char *propname = FUNC9(pair);
	zfs_prop_t prop = FUNC15(propname);
	uint64_t intval;
	int err = -1;

	if (prop == ZPROP_INVAL) {
		if (FUNC18(propname))
			return (FUNC17(dsname, pair));
		return (-1);
	}

	if (FUNC10(pair) == DATA_TYPE_NVLIST) {
		nvlist_t *attrs;
		FUNC0(FUNC11(pair, &attrs) == 0);
		FUNC0(FUNC8(attrs, ZPROP_VALUE,
		    &pair) == 0);
	}

	if (FUNC16(prop) == PROP_TYPE_STRING)
		return (-1);

	FUNC0(0 == FUNC12(pair, &intval));

	switch (prop) {
	case ZFS_PROP_QUOTA:
		err = FUNC4(dsname, source, intval);
		break;
	case ZFS_PROP_REFQUOTA:
		err = FUNC1(dsname, source, intval);
		break;
	case ZFS_PROP_FILESYSTEM_LIMIT:
	case ZFS_PROP_SNAPSHOT_LIMIT:
		if (intval == UINT64_MAX) {
			/* clearing the limit, just do it */
			err = 0;
		} else {
			err = FUNC3(dsname);
		}
		/*
		 * Set err to -1 to force the zfs_set_prop_nvlist code down the
		 * default path to set the value in the nvlist.
		 */
		if (err == 0)
			err = -1;
		break;
	case ZFS_PROP_RESERVATION:
		err = FUNC5(dsname, source, intval);
		break;
	case ZFS_PROP_REFRESERVATION:
		err = FUNC2(dsname, source, intval);
		break;
	case ZFS_PROP_VOLSIZE:
		err = FUNC22(dsname, intval);
		break;
	case ZFS_PROP_VERSION:
	{
		zfsvfs_t *zfsvfs;

		if ((err = FUNC20(dsname, FTAG, &zfsvfs, B_TRUE)) != 0)
			break;

		err = FUNC19(zfsvfs, intval);
		FUNC21(zfsvfs, FTAG);

		if (err == 0 && intval >= ZPL_VERSION_USERSPACE) {
			zfs_cmd_t *zc;

			zc = FUNC7(sizeof (zfs_cmd_t), KM_SLEEP);
			(void) FUNC13(zc->zc_name, dsname);
			(void) FUNC14(zc);
			FUNC6(zc, sizeof (zfs_cmd_t));
		}
		break;
	}
	default:
		err = -1;
	}

	return (err);
}