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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int NFDS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC10(int sock)
{
	char name[16];
	nvlist_t *nvl;
	int anfds, bnfds, fd, i, j;

	fd = FUNC8(_PATH_DEVNULL, O_RDONLY);
	FUNC0(fd >= 0);

	for (i = 1; i < NFDS; i++) {
		nvl = FUNC5(0);
		bnfds = FUNC3();
		if (bnfds == -1)
			FUNC1(EXIT_FAILURE, "sysctl");

		for (j = 0; j < i; j++) {
			FUNC9(name, sizeof(name), "fd%d", j);
			FUNC4(nvl, name, fd);
		}
		FUNC7(sock, nvl);
		FUNC6(nvl);

		anfds = FUNC3();
		if (anfds == -1)
			FUNC1(EXIT_FAILURE, "sysctl");
		if (anfds != bnfds)
			FUNC2(EXIT_FAILURE, "fd count mismatch");
	}
}