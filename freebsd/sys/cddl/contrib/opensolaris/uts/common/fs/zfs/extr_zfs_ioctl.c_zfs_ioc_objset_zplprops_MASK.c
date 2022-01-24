#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dds_inconsistent; } ;
struct TYPE_5__ {scalar_t__ zc_nvlist_dst; TYPE_4__ zc_objset_stats; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZFS_PROP_CASE ; 
 int /*<<< orphan*/  ZFS_PROP_NORMALIZE ; 
 int /*<<< orphan*/  ZFS_PROP_UTF8ONLY ; 
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(zfs_cmd_t *zc)
{
	objset_t *os;
	int err;

	/* XXX reading without owning */
	if ((err = FUNC3(zc->zc_name, FTAG, &os)))
		return (err);

	FUNC2(os, &zc->zc_objset_stats);

	/*
	 * NB: nvl_add_zplprop() will read the objset contents,
	 * which we aren't supposed to do with a DS_MODE_USER
	 * hold, because it could be inconsistent.
	 */
	if (zc->zc_nvlist_dst != 0 &&
	    !zc->zc_objset_stats.dds_inconsistent &&
	    FUNC5(os) == DMU_OST_ZFS) {
		nvlist_t *nv;

		FUNC1(FUNC7(&nv, NV_UNIQUE_NAME, KM_SLEEP) == 0);
		if ((err = FUNC6(os, nv, ZFS_PROP_VERSION)) == 0 &&
		    (err = FUNC6(os, nv, ZFS_PROP_NORMALIZE)) == 0 &&
		    (err = FUNC6(os, nv, ZFS_PROP_UTF8ONLY)) == 0 &&
		    (err = FUNC6(os, nv, ZFS_PROP_CASE)) == 0)
			err = FUNC9(zc, nv);
		FUNC8(nv);
	} else {
		err = FUNC0(ENOENT);
	}
	FUNC4(os, FTAG);
	return (err);
}