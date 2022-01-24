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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESC_ZFS_HISTORY_EVENT ; 
 int /*<<< orphan*/  ZFS_EV_HIST_CMD ; 
 int /*<<< orphan*/  ZFS_EV_HIST_DSID ; 
 int /*<<< orphan*/  ZFS_EV_HIST_DSNAME ; 
 int /*<<< orphan*/  ZFS_EV_HIST_HOST ; 
 int /*<<< orphan*/  ZFS_EV_HIST_INT_EVENT ; 
 int /*<<< orphan*/  ZFS_EV_HIST_INT_NAME ; 
 int /*<<< orphan*/  ZFS_EV_HIST_INT_STR ; 
 int /*<<< orphan*/  ZFS_EV_HIST_IOCTL ; 
 int /*<<< orphan*/  ZFS_EV_HIST_TIME ; 
 int /*<<< orphan*/  ZFS_EV_HIST_TXG ; 
 int /*<<< orphan*/  ZFS_EV_HIST_WHO ; 
 int /*<<< orphan*/  ZFS_EV_HIST_ZONE ; 
 int /*<<< orphan*/  ZPOOL_HIST_CMD ; 
 int /*<<< orphan*/  ZPOOL_HIST_DSID ; 
 int /*<<< orphan*/  ZPOOL_HIST_DSNAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_HOST ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_EVENT ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_NAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_STR ; 
 int /*<<< orphan*/  ZPOOL_HIST_IOCTL ; 
 int /*<<< orphan*/  ZPOOL_HIST_TIME ; 
 int /*<<< orphan*/  ZPOOL_HIST_TXG ; 
 int /*<<< orphan*/  ZPOOL_HIST_WHO ; 
 int /*<<< orphan*/  ZPOOL_HIST_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(spa_t *spa, nvlist_t *nvl)
{
	nvlist_t *hist_nvl = FUNC2();
	uint64_t uint64;
	char *string;

	if (FUNC4(nvl, ZPOOL_HIST_CMD, &string) == 0)
		FUNC0(hist_nvl, ZFS_EV_HIST_CMD, string);

	if (FUNC4(nvl, ZPOOL_HIST_INT_NAME, &string) == 0)
		FUNC0(hist_nvl, ZFS_EV_HIST_INT_NAME, string);

	if (FUNC4(nvl, ZPOOL_HIST_ZONE, &string) == 0)
		FUNC0(hist_nvl, ZFS_EV_HIST_ZONE, string);

	if (FUNC4(nvl, ZPOOL_HIST_HOST, &string) == 0)
		FUNC0(hist_nvl, ZFS_EV_HIST_HOST, string);

	if (FUNC4(nvl, ZPOOL_HIST_DSNAME, &string) == 0)
		FUNC0(hist_nvl, ZFS_EV_HIST_DSNAME, string);

	if (FUNC4(nvl, ZPOOL_HIST_INT_STR, &string) == 0)
		FUNC0(hist_nvl, ZFS_EV_HIST_INT_STR, string);

	if (FUNC4(nvl, ZPOOL_HIST_IOCTL, &string) == 0)
		FUNC0(hist_nvl, ZFS_EV_HIST_IOCTL, string);

	if (FUNC4(nvl, ZPOOL_HIST_INT_NAME, &string) == 0)
		FUNC0(hist_nvl, ZFS_EV_HIST_INT_NAME, string);

	if (FUNC5(nvl, ZPOOL_HIST_DSID, &uint64) == 0)
		FUNC1(hist_nvl, ZFS_EV_HIST_DSID, uint64);

	if (FUNC5(nvl, ZPOOL_HIST_TXG, &uint64) == 0)
		FUNC1(hist_nvl, ZFS_EV_HIST_TXG, uint64);

	if (FUNC5(nvl, ZPOOL_HIST_TIME, &uint64) == 0)
		FUNC1(hist_nvl, ZFS_EV_HIST_TIME, uint64);

	if (FUNC5(nvl, ZPOOL_HIST_WHO, &uint64) == 0)
		FUNC1(hist_nvl, ZFS_EV_HIST_WHO, uint64);

	if (FUNC5(nvl, ZPOOL_HIST_INT_EVENT, &uint64) == 0)
		FUNC1(hist_nvl, ZFS_EV_HIST_INT_EVENT, uint64);

	FUNC6(spa, NULL, hist_nvl, ESC_ZFS_HISTORY_EVENT);

	FUNC3(hist_nvl);
}