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
 scalar_t__ LineNo ; 
 int /*<<< orphan*/ * _fs_fp ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ fsp_set ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  path_fstab ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(void)
{
	if (_fs_fp) {
		FUNC4(_fs_fp);
		LineNo = 0;
		return (1);
	}
	if (fsp_set == 0) {
		if (FUNC3())
			FUNC5(NULL);
		else
			FUNC5(FUNC2("PATH_FSTAB"));
	}
	if ((_fs_fp = FUNC1(path_fstab, "re")) != NULL) {
		LineNo = 0;
		return (1);
	}
	FUNC0(errno);
	return (0);
}