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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*,int*) ; 

void
FUNC6(int nargs, char **args)
{
	int pbeg_y, pbeg_x, sbeg_y, sbeg_x, smax_y, smax_x;
	WINDOW *pad;

	if (FUNC0(nargs, 7) == 1)
		return;

	if (FUNC5(args[0], "%p", pad) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[1], "%d", &pbeg_y) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[2], "%d", &pbeg_x) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[3], "%d", &sbeg_y) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[4], "%d", &sbeg_x) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[5], "%d", &smax_y) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[6], "%d", &smax_x) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	/* XXX causes refresh */
	FUNC2(1);
	FUNC4(FUNC1(pad, pbeg_y, pbeg_x, sbeg_y, sbeg_x, smax_y,
			       smax_x));

}