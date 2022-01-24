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
 int BUFSIZ ; 
 scalar_t__ PRELIM ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int dirchange ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

void
FUNC4(const char *initial, int argc, char *argv[])
{
	int i;
	char buf[BUFSIZ];		/* must be >= sizeof(line) */

	(void)FUNC3(buf, initial, sizeof(buf));
	for (i = 1; i < argc; i++) {
		(void)FUNC2(buf, argv[i], sizeof(buf));
		if (i < (argc - 1))
			(void)FUNC2(buf, " ", sizeof(buf));
	}
	if (FUNC0("%s", buf) == PRELIM) {
		while (FUNC1(0) == PRELIM)
			continue;
	}
	dirchange = 1;
}