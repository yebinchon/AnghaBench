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
struct lfstestargs {int /*<<< orphan*/  ta_cleanerloop; int /*<<< orphan*/  ta_cleanerthread; int /*<<< orphan*/  ta_mntpath; int /*<<< orphan*/  ta_uargs; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  MOUNT_LFS ; 
 int /*<<< orphan*/  cleaner ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lfstestargs*) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

int
FUNC5(const atf_tc_t *tc, void *buf, const char *path, int flags)
{
	struct lfstestargs *args = buf;
	int res;

	res = FUNC1(path, 0777);
	if (res == -1)
		return res;

	res = FUNC2(MOUNT_LFS, path, flags, &args->ta_uargs,
	    sizeof(args->ta_uargs));
	if (res == -1)
		return res;

	FUNC4(args->ta_mntpath, path);
	res = FUNC0(&args->ta_cleanerthread, NULL, cleaner, args);
	if (res)
		return res;

	/* wait for cleaner to initialize */
	FUNC3(&args->ta_cleanerloop);

	return 0;
}