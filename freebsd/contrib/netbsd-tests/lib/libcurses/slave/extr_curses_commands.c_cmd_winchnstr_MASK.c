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
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC7(int nargs, char **args)
{
	WINDOW *win;
	chtype string[256];
	int count;

	if (FUNC0(nargs, 2) == 1)
		return;

	if (FUNC5(args[0], "%p", win) == 0) {
		FUNC1(1);
		FUNC2("BAD ARGUMENT");
		return;
	}

	if (FUNC5(args[1], "%d", &count) == 0) {
		FUNC1(1);
		FUNC2("BAD ARGUMENT");
		return;
	}

	/* XXX - call2 */
	FUNC1(2);
	FUNC4(FUNC6(win, string, count));
	FUNC3(string);
}