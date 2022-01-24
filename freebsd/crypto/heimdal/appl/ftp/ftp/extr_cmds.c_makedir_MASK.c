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
 scalar_t__ ERROR ; 
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ verbose ; 

void
FUNC3(int argc, char **argv)
{

	if (argc < 2 && !FUNC0(&argc, &argv, "directory-name")) {
		FUNC2("usage: %s directory-name\n", argv[0]);
		code = -1;
		return;
	}
	if (FUNC1("MKD %s", argv[1]) == ERROR && code == 500) {
		if (verbose)
			FUNC2("MKD command not recognized, trying XMKD\n");
		FUNC1("XMKD %s", argv[1]);
	}
}