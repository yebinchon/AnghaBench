#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_allow_log_key ; 

__attribute__((used)) static int
FUNC9(const char *unused, nvlist_t *innvl, nvlist_t *outnvl)
{
	char *message;
	spa_t *spa;
	int error;
	char *poolname;

	/*
	 * The poolname in the ioctl is not set, we get it from the TSD,
	 * which was set at the end of the last successful ioctl that allows
	 * logging.  The secpolicy func already checked that it is set.
	 * Only one log ioctl is allowed after each successful ioctl, so
	 * we clear the TSD here.
	 */
	poolname = FUNC7(zfs_allow_log_key);
	(void) FUNC8(zfs_allow_log_key, NULL);
	error = FUNC4(poolname, &spa, FTAG);
	FUNC6(poolname);
	if (error != 0)
		return (error);

	if (FUNC1(innvl, "message", &message) != 0)  {
		FUNC2(spa, FTAG);
		return (FUNC0(EINVAL));
	}

	if (FUNC5(spa) < SPA_VERSION_ZPOOL_HISTORY) {
		FUNC2(spa, FTAG);
		return (FUNC0(ENOTSUP));
	}

	error = FUNC3(spa, message);
	FUNC2(spa, FTAG);
	return (error);
}