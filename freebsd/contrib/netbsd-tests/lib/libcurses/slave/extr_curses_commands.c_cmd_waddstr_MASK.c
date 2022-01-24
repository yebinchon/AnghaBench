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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void
FUNC6(int nargs, char **args)
{
	WINDOW *win;

	if (FUNC0(nargs, 2) == 1)
		return;

	if (FUNC4(args[0], "%p", &win) == 0) {
		FUNC1(1);
		FUNC2("BAD ARGUMENT");
		return;
	}

	FUNC1(1);
	FUNC3(FUNC5(win, args[1]));
}