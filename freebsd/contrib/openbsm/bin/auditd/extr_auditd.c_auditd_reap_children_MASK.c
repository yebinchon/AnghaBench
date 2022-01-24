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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	pid_t child;
	int wstatus;

	while ((child = FUNC4(-1, &wstatus, WNOHANG)) > 0) {
		if (!wstatus)
			continue;
		FUNC3("warn process [pid=%d] %s %d.", child,
		    ((FUNC1(wstatus)) ? "exited with non-zero status" :
		    "exited as a result of signal"),
		    ((FUNC1(wstatus)) ? FUNC0(wstatus) :
		    FUNC2(wstatus)));
	}
}