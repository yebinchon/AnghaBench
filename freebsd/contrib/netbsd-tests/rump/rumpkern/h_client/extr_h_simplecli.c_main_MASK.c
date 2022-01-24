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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int
FUNC5(int argc, char *argv[])
{

	if (FUNC3() == -1)
		FUNC0(1, "rumpclient init");

	if (argc > 1) {
		for (;;) {
			FUNC2();
			FUNC4(10000);
		}
	} else {
		if (FUNC2() > 0)
			FUNC1(0);
		FUNC0(1, "getpid");
	}
}