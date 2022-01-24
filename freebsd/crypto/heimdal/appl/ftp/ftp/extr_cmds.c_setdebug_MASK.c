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
 int /*<<< orphan*/  SO_DEBUG ; 
 int FUNC0 (char*) ; 
 int code ; 
 int debug ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

void
FUNC3(int argc, char **argv)
{
	int val;

	if (argc > 1) {
		val = FUNC0(argv[1]);
		if (val < 0) {
			FUNC2("%s: bad debugging value.\n", argv[1]);
			code = -1;
			return;
		}
	} else
		val = !debug;
	debug = val;
	if (debug)
		options |= SO_DEBUG;
	else
		options &= ~SO_DEBUG;
	FUNC2("Debugging %s (debug=%d).\n", FUNC1(debug), debug);
	code = debug > 0;
}