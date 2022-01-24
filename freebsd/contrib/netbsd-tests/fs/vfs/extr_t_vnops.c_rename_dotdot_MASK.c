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
 scalar_t__ EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  USES_DIRS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ errno ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(const atf_tc_t *tc, const char *mp)
{

	if (FUNC0(tc))
		FUNC3("rename not supported by file system");

	USES_DIRS;

	if (FUNC4(mp) == -1)
		FUNC2("chdir mountpoint");

	if (FUNC5("dir1", 0777) == -1)
		FUNC2("mkdir 1");
	if (FUNC5("dir2", 0777) == -1)
		FUNC2("mkdir 2");

	if (FUNC6("dir1", "dir1/..") != -1 || errno != EINVAL)
		FUNC2("self-dotdot to");

	if (FUNC6("dir1/..", "sometarget") != -1 || errno != EINVAL)
		FUNC2("self-dotdot from");

	if (FUNC6("dir1", "dir2/..") != -1 || errno != EINVAL)
		FUNC1("other-dotdot");

	FUNC4("/");
}