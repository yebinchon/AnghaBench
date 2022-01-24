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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int ftp_debug ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  options ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC5(int argc, char *argv[])
{
	if (argc == 0 || argc > 2) {
		FUNC0("usage: %s [ on | off | debuglevel ]\n", argv[0]);
		code = -1;
		return;
	} else if (argc == 2) {
		if (FUNC3(argv[1], "on") == 0)
			ftp_debug = 1;
		else if (FUNC3(argv[1], "off") == 0)
			ftp_debug = 0;
		else {
			int val;

			val = FUNC4(argv[1]);
			if (val < 0) {
				FUNC1(ttyout, "%s: bad debugging value.\n",
				    argv[1]);
				code = -1;
				return;
			}
			ftp_debug = val;
		}
	} else
		ftp_debug = !ftp_debug;
	if (ftp_debug)
		options |= SO_DEBUG;
	else
		options &= ~SO_DEBUG;
	FUNC1(ttyout, "Debugging %s (ftp_debug=%d).\n", FUNC2(ftp_debug), ftp_debug);
	code = ftp_debug > 0;
}