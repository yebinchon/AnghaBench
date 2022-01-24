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
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  TEST_NONROOT_ID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(const char *testopts)
{
	static char buf[512];
	int fd;
	int error;
	int i;
	FUNC2(".", TEST_NONROOT_ID, TEST_NONROOT_ID);
	FUNC1(".", 0777);
	if (FUNC5(TEST_NONROOT_ID) != 0) {
		error = errno;
		FUNC11("rump_sys_setegid");
		return error;
	}
	if (FUNC6(TEST_NONROOT_ID) != 0) {
		error = errno;
		FUNC11("rump_sys_seteuid");
		return error;
	}

	/*
	 * create files one past the soft limit: one less as we already own the
	 * root directory
	 */
	for (i = 0; i < 4; i++) {
		FUNC9(buf, "file%d", i);
		fd = FUNC4(buf, O_EXCL| O_CREAT | O_RDWR, 0644);
		if (fd < 0)
			FUNC0(1, "file create failed early");
		FUNC9(buf, "test file no %d", i);
		FUNC7(fd, buf, FUNC10(buf));
		FUNC3(fd);
	}
	/* now create an extra file after grace time: this should fail */
	FUNC8(2);
	FUNC9(buf, "file%d", i);
	fd = FUNC4(buf, O_EXCL| O_CREAT | O_RDWR, 0644);
	if (fd < 0)
		error = errno;
	else
		error = 0;
	
	FUNC3(fd);
	FUNC6(0);
	FUNC5(0);
	return error;
}