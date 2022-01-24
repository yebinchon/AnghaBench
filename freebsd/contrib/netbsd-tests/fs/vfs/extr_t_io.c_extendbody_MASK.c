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
struct stat {int /*<<< orphan*/  st_size; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TESTSTR ; 
 int TESTSZ ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,struct stat*) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(const atf_tc_t *tc, off_t seekcnt)
{
	char buf[TESTSZ+1];
	struct stat sb;
	int fd;

	FUNC2();
	FUNC4(fd = FUNC8("testfile",
	    O_CREAT | O_RDWR | (seekcnt ? O_APPEND : 0)));
	FUNC4(FUNC7(fd, seekcnt));
	FUNC4(FUNC6(fd, &sb));
	FUNC0(sb.st_size, seekcnt);

	FUNC0(FUNC10(fd, TESTSTR, TESTSZ), TESTSZ);
	FUNC0(FUNC9(fd, buf, TESTSZ, seekcnt), TESTSZ);
	FUNC1(buf, TESTSTR);

	FUNC4(FUNC6(fd, &sb));
	FUNC0(sb.st_size, (off_t)TESTSZ + seekcnt);
	FUNC4(FUNC5(fd));
	FUNC3();
}