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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int O_CREAT ; 
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
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(const char *testopts)
{
	static char buf[512];
	int fd;
	int error;
	FUNC2(".", TEST_NONROOT_ID, TEST_NONROOT_ID);
	FUNC1(".", 0777);
	if (FUNC5(TEST_NONROOT_ID) != 0) {
		error = errno;
		FUNC9("rump_sys_setegid");
		return error;
	}
	if (FUNC6(TEST_NONROOT_ID) != 0) {
		error = errno;
		FUNC9("rump_sys_seteuid");
		return error;
	}
	fd = FUNC4("test_fillup", O_CREAT | O_RDWR, 0644);
	if (fd < 0) {
		error = errno;
		FUNC9("rump_sys_open");
	} else {
		/*
		 * write up to the soft limit, wait a bit, an try to
		 * keep on writing
		 */
		int i;

		/* write 2k: with the directory this makes 2.5K */
		for (i = 0; i < 4; i++) {
			error = FUNC7(fd, buf, sizeof(buf));
			if (error != sizeof(buf))
				FUNC0(1, "write failed early");
		}
		FUNC8(2);
		/* now try to write an extra .5k */
		if (FUNC7(fd, buf, sizeof(buf)) != sizeof(buf))
			error = errno;
		else
			error = 0;
	}
	FUNC3(fd);
	FUNC6(0);
	FUNC5(0);
	return error;
}