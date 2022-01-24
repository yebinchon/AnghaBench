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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char** requests ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

FUNC6()
{
	int i;
	char *buf;

	for (i = 0; i < FUNC2(requests); i++) {
		FUNC3("* requests:[%s]\n", requests[i]);
		if ((buf = FUNC4(requests[i])) == NULL)
			continue;
		FUNC3("\tsetlen:%d\n", FUNC0(buf));

		FUNC3("\tPF_INET:\n");
		FUNC5(buf, PF_INET);

		FUNC3("\tPF_INET6:\n");
		FUNC5(buf, PF_INET6);
		FUNC1(buf);
	}
}