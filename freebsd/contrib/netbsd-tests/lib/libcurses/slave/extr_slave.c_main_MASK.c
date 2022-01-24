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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/ * cmdpipe ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * slvpipe ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC6(int argc, char *argv[])
{
	WINDOW *mainscr;

	if (argc != 5) {
		FUNC1(stderr, "Usage: %s <cmdin> <cmdout> <slvin> slvout>\n",
			FUNC2());
		return 0;
	}
	FUNC5(argv[1], "%d", &cmdpipe[0]);
	FUNC5(argv[2], "%d", &cmdpipe[1]);
	FUNC5(argv[3], "%d", &slvpipe[0]);
	FUNC5(argv[4], "%d", &slvpipe[1]);

	mainscr = FUNC3();
	if (mainscr == NULL)
		FUNC0(1, "initscr failed");

	FUNC4(mainscr);

	return 0;
}