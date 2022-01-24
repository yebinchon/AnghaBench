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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rrw_tsd_key ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_allow_log_key ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  zfs_fsyncer_key ; 
 int /*<<< orphan*/  zfs_share_lock ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ zio_injection_enabled ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(void)
{
	if (FUNC1() || FUNC4() || FUNC7() ||
	    zio_injection_enabled) {
		return (EBUSY);
	}

	FUNC6();
	FUNC8();
	FUNC5();
	FUNC2();

	FUNC3(&zfs_fsyncer_key);
	FUNC3(&rrw_tsd_key);
	FUNC3(&zfs_allow_log_key);

	FUNC0(&zfs_share_lock);

	return (0);
}