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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC1(stderr, "Usage: %s [-v] [-I include-path] [-C check-path] "
	    "[-T terminfo-file] [-s pathtoslave] [-t term] "
	    "commandfile\n", FUNC2());
	FUNC1(stderr, " where:\n");
	FUNC1(stderr, "    -v enables verbose test output\n");
	FUNC1(stderr, "    -T is a directory containing the terminfo.cdb "
	    "file, or a file holding the terminfo description n");
	FUNC1(stderr, "    -s is the path to the slave executable\n");
	FUNC1(stderr, "    -t is value to set TERM to for the test\n");
	FUNC1(stderr, "    -I is the directory to include files\n");
	FUNC1(stderr, "    -C is the directory for config files\n");
	FUNC1(stderr, "    commandfile is a file of test directives\n");
	FUNC0(1);
}