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
 int code ; 
 int FUNC1 (char*) ; 
 int dirchange ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ verbose ; 

void
FUNC4(int argc, char *argv[])
{
	int r;

	if (argc == 0) {
		FUNC0("usage: %s\n", argv[0]);
		code = -1;
		return;
	}
	r = FUNC1("CDUP");
	if (r == ERROR && code == 500) {
		if (verbose)
			FUNC2("CDUP command not recognized, trying XCUP.\n",
			    ttyout);
		r = FUNC1("XCUP");
	}
	if (r == COMPLETE) {
		dirchange = 1;
		FUNC3();
	}
}