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
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ verbose ; 

void
FUNC5(int argc, char *argv[])
{
	int r;

	if (argc == 0 || argc > 2 ||
	    (argc == 1 && !FUNC1(&argc, &argv, "remote-directory"))) {
		FUNC0("usage: %s remote-directory\n", argv[0]);
		code = -1;
		return;
	}
	r = FUNC2("CWD %s", argv[1]);
	if (r == ERROR && code == 500) {
		if (verbose)
			FUNC3("CWD command not recognized, trying XCWD.\n",
			    ttyout);
		r = FUNC2("XCWD %s", argv[1]);
	}
	if (r == COMPLETE) {
		dirchange = 1;
		FUNC4();
	}
}