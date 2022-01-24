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
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  TEST_NONROOT_ID ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(const char *testopts)
{
	static char buf[512];
	int fd;
	int error;
	int i;
	FUNC1(".", TEST_NONROOT_ID, TEST_NONROOT_ID);
	FUNC0(".", 0777);
	if (FUNC4(TEST_NONROOT_ID) != 0) {
		error = errno;
		FUNC9("rump_sys_setegid");
		return error;
	}
	if (FUNC5(TEST_NONROOT_ID) != 0) {
		error = errno;
		FUNC9("rump_sys_seteuid");
		return error;
	}

	for (i = 0; ; i++) {
		FUNC7(buf, "file%d", i);
		fd = FUNC3(buf, O_CREAT | O_RDWR, 0644);
		if (fd < 0)
			break;
		FUNC7(buf, "test file no %d", i);
		FUNC6(fd, buf, FUNC8(buf));
		FUNC2(fd);
	}
	error = errno;
	
	FUNC2(fd);
	FUNC5(0);
	FUNC4(0);
	return error;
}