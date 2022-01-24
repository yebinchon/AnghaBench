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
 int COMPLETE ; 
 int ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 int FUNC2 (char*,char*) ; 
 int dirchange ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttyout ; 
 scalar_t__ verbose ; 

void
FUNC4(int argc, char *argv[])
{
	int r;

	if (argc == 0 || argc > 2 ||
	    (argc == 1 && !FUNC1(&argc, &argv, "directory-name"))) {
		FUNC0("usage: %s directory-name\n", argv[0]);
		code = -1;
		return;
	}
	r = FUNC2("RMD %s", argv[1]);
	if (r == ERROR && code == 500) {
		if (verbose)
			FUNC3("RMD command not recognized, trying XRMD.\n",
			    ttyout);
		r = FUNC2("XRMD %s", argv[1]);
	}
	if (r == COMPLETE)
		dirchange = 1;
}