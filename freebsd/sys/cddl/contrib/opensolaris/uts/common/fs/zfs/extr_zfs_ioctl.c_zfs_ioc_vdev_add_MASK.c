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
struct TYPE_3__ {int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_conf_size; int /*<<< orphan*/  zc_nvlist_conf; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDOM ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(zfs_cmd_t *zc)
{
	spa_t *spa;
	int error;
	nvlist_t *config, **l2cache, **spares;
	uint_t nl2cache = 0, nspares = 0;

	error = FUNC6(zc->zc_name, &spa, FTAG);
	if (error != 0)
		return (error);

	error = FUNC1(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
	    zc->zc_iflags, &config);
	(void) FUNC3(config, ZPOOL_CONFIG_L2CACHE,
	    &l2cache, &nl2cache);

	(void) FUNC3(config, ZPOOL_CONFIG_SPARES,
	    &spares, &nspares);

#ifdef illumos
	/*
	 * A root pool with concatenated devices is not supported.
	 * Thus, can not add a device to a root pool.
	 *
	 * Intent log device can not be added to a rootpool because
	 * during mountroot, zil is replayed, a seperated log device
	 * can not be accessed during the mountroot time.
	 *
	 * l2cache and spare devices are ok to be added to a rootpool.
	 */
	if (spa_bootfs(spa) != 0 && nl2cache == 0 && nspares == 0) {
		nvlist_free(config);
		spa_close(spa, FTAG);
		return (SET_ERROR(EDOM));
	}
#endif /* illumos */

	if (error == 0) {
		error = FUNC7(spa, config);
		FUNC2(config);
	}
	FUNC5(spa, FTAG);
	return (error);
}