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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const atf_tc_t *tc, off_t count, bool dotrunc)
{
	char *buf;
	int fd;

	FUNC3(buf = FUNC5(count), NULL);
	FUNC1();
	FUNC4(fd = FUNC8("testi", O_CREAT | O_RDWR, 0666));
	FUNC0(FUNC9(fd, buf, count), count);
	FUNC4(FUNC6(fd));

	FUNC4(fd = FUNC8("testi", O_RDWR));
	if (dotrunc)
		FUNC4(FUNC7(fd, 0));
	FUNC0(FUNC9(fd, buf, count), count);
	FUNC4(FUNC6(fd));
	FUNC2();
}