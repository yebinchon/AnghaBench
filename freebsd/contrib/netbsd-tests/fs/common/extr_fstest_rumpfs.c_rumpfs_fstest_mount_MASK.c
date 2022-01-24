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
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNT_RUMPFS ; 
 int FUNC0 (char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(const atf_tc_t *tc, void *buf, const char *path, int flags)
{
	int res;

	res = FUNC0(path, 0777);
	if (res == -1)
		return res;

	return FUNC1(MOUNT_RUMPFS, path, flags, NULL, 0);
}