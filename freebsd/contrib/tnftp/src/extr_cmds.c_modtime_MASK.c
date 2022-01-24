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
typedef  int time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int FUNC4 (char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC6(int argc, char *argv[])
{
	time_t mtime;

	if (argc == 0 || argc > 2 ||
	    (argc == 1 && !FUNC1(&argc, &argv, "remote-file"))) {
		FUNC0("usage: %s remote-file\n", argv[0]);
		code = -1;
		return;
	}
	mtime = FUNC4(argv[1], 1);
	if (mtime != -1)
		FUNC2(ttyout, "%s\t%s", argv[1],
		    FUNC5(FUNC3(&mtime)));
	code = (mtime > 0);
}