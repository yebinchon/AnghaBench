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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*,...) ; 

void
FUNC6(int nargs, char **args)
{
	int y, x, n, attr;
	short colour;

	if (FUNC0(nargs, 6) == 1)
		return;

	if (FUNC5(args[0], "%d", &y) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[1], "%d", &x) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[2], "%d", &n) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[3], "%d", &attr) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[4], "%hd", &colour) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	FUNC2(1);
	FUNC4(FUNC1(y, x, n, attr, colour, NULL));
}