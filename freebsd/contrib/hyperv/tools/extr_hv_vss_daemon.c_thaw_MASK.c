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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int) ; 
 int errno ; 
 int g_ufs_suspend_handle ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(void)
{
	int error = 0;
	if (g_ufs_suspend_handle != -1) {
		error = FUNC1(g_ufs_suspend_handle);
		if (!error) {
			g_ufs_suspend_handle = -1;
			FUNC0(LOG_INFO, "Successfully thaw the fs\n");
		} else {
			error = errno;
			FUNC0(LOG_ERR, "Fail to thaw the fs: "
			    "%d %s\n", errno, FUNC2(errno));
		}
	} else {
		FUNC0(LOG_INFO, "The fs has already been thawed\n");
	}

	return (error);
}