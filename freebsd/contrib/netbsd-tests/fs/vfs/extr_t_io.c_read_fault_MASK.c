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
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_RSYNC ; 
 int O_SYNC ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char*,int,...) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 

__attribute__((used)) static void
FUNC9(const atf_tc_t *tc, const char *mp)
{
	char ch = 123;
	int fd;

	FUNC2();
	FUNC4(fd = FUNC6("file", O_CREAT | O_RDWR, 0777));
	FUNC0(FUNC8(fd, &ch, 1), 1);
	FUNC4(FUNC5(fd));
	FUNC4(fd = FUNC6("file", O_RDONLY | O_SYNC | O_RSYNC));
	FUNC1(EFAULT, FUNC7(fd, NULL, 1) == -1);
	FUNC4(FUNC5(fd));
	FUNC3();
}