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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (char*,int,int) ; 

__attribute__((used)) static void
FUNC6(const atf_tc_t *tc, const char *mp)
{
	int fd;

	FUNC0();
	FUNC2(fd = FUNC5("file", O_RDWR|O_CREAT|O_TRUNC, 0666));
	FUNC2(FUNC4(fd, 2));
	FUNC2(FUNC4(fd, 1));
	FUNC3(fd);
	FUNC1();
}