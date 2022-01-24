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
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC8(const atf_tc_t *tc, const char *mp)
{
	char buf[64];
	int i;

	FUNC0(FUNC3(mp));

	for (i = 0; i < 256; i++) {
		int fd;
		FUNC7(buf, sizeof(buf), "%c", i);
		fd = FUNC5(buf, O_RDWR|O_CREAT|O_EXCL, 0666);
		if (fd == -1)
			continue;
		FUNC1(FUNC4(fd), "%d", fd);
		FUNC1(FUNC6(buf), "%s", buf);
	}
	FUNC2("\n");

	FUNC3("/");
}