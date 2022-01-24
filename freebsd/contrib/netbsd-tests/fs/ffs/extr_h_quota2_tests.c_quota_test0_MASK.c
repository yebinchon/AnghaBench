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
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int) ; 
 unsigned int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(const char *testopts)
{
	static char buf[512];
	int fd;
	int error;
	unsigned int i;
	int chowner = 1;
	for (i =0; testopts && i < FUNC8(testopts); i++) {
		switch(testopts[i]) {
		case 'C':
			chowner = 0;
			break;
		default:
			FUNC0(1, "test4: unknown option %c", testopts[i]);
		}
	}
	if (chowner)
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
		while (FUNC7(fd, buf, sizeof(buf)) == sizeof(buf))
			error = 0;
		error = errno;
	}
	FUNC3(fd);
	FUNC6(0);
	FUNC5(0);
	return error;
}