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
 int /*<<< orphan*/  AFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNSIZE ; 
 int /*<<< orphan*/  FUNTEXT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 

__attribute__((used)) static void
FUNC10(const atf_tc_t *tc, const char *mp)
{
	int fd;
	char buf[FUNSIZE+1];
	int expected;

	if (FUNC5(tc))
		expected = EACCES;
	else
		expected = EROFS;

	FUNC3();
	FUNC6(fd = FUNC8(AFILE, O_RDONLY));
	FUNC0(FUNC9(fd, buf, FUNSIZE), FUNSIZE);
	buf[FUNSIZE] = '\0';
	FUNC2(buf, FUNTEXT);
	FUNC6(FUNC7(fd));

	FUNC1(expected, FUNC8(AFILE, O_WRONLY) == -1);
	FUNC1(expected, FUNC8(AFILE, O_RDWR) == -1);
	FUNC4();
}