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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char*,int /*<<< orphan*/ **) ; 

void
FUNC6(int nargs, char **args)
{
	WINDOW *win;
	int y, x;

	if (FUNC0(nargs, 1) == 1)
		return;

	if (FUNC5(args[0], "%p", &win) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	FUNC1(win, y, x);
	FUNC2(2);
	FUNC4(y);
	FUNC4(x);
}