#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* zc_name; int /*<<< orphan*/  zc_string; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_11__ {int /*<<< orphan*/  dd_origin_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIND_SNAPSHOTS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  zfs_unmount_snap_cb ; 

__attribute__((used)) static int
FUNC13(zfs_cmd_t *zc)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds, *ods;
	char origin[ZFS_MAX_DATASET_NAME_LEN];
	char *cp;
	int error;

	zc->zc_name[sizeof (zc->zc_name) - 1] = '\0';
	if (FUNC1(zc->zc_name, NULL, NULL) != 0 ||
	    FUNC12(zc->zc_name, '%'))
		return (FUNC0(EINVAL));

	error = FUNC10(zc->zc_name, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC3(dp, zc->zc_name, FTAG, &ds);
	if (error != 0) {
		FUNC11(dp, FTAG);
		return (error);
	}

	if (!FUNC8(ds->ds_dir)) {
		FUNC7(ds, FTAG);
		FUNC11(dp, FTAG);
		return (FUNC0(EINVAL));
	}

	error = FUNC4(dp,
	    FUNC9(ds->ds_dir)->dd_origin_obj, FTAG, &ods);
	if (error != 0) {
		FUNC7(ds, FTAG);
		FUNC11(dp, FTAG);
		return (error);
	}

	FUNC5(ods, origin);
	FUNC7(ods, FTAG);
	FUNC7(ds, FTAG);
	FUNC11(dp, FTAG);

	/*
	 * We don't need to unmount *all* the origin fs's snapshots, but
	 * it's easier.
	 */
	cp = FUNC12(origin, '@');
	if (cp)
		*cp = '\0';
	(void) FUNC2(origin,
	    zfs_unmount_snap_cb, NULL, DS_FIND_SNAPSHOTS);
	return (FUNC6(zc->zc_name, zc->zc_string));
}