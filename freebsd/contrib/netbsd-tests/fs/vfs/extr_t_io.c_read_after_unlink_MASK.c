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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TBSIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 

__attribute__((used)) static void
FUNC13(const atf_tc_t *tc, const char *mp)
{
	char buf[TBSIZE], buf2[TBSIZE];
	int fd;

	FUNC2();

	/* create file and put some content into it */
	FUNC4(fd = FUNC8("file", O_RDWR|O_CREAT, 0666));
	FUNC6(buf, 'D', TBSIZE);
	FUNC0(FUNC12(fd, buf, TBSIZE), TBSIZE);
	FUNC7(fd);

	/* flush buffers from UBC to file system */
	FUNC1(EBUSY, FUNC11(mp, 0) == -1);

	FUNC4(fd = FUNC8("file", O_RDWR));
	FUNC4(FUNC10("file"));

	FUNC0(FUNC9(fd, buf2, TBSIZE), TBSIZE);
	FUNC0(FUNC5(buf, buf2, TBSIZE), 0);
	FUNC7(fd);

	FUNC3();
}