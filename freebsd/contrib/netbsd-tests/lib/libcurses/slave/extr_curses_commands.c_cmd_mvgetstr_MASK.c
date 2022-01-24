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
 int /*<<< orphan*/  FUNC1 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int*) ; 

void
FUNC7(int nargs, char **args)
{
	int y, x;
	char string[256];

	if (FUNC0(nargs, 2) == 1)
		return;

	if (FUNC6(args[0], "%d", &y) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	if (FUNC6(args[1], "%d", &x) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	/* XXX call2 */
	FUNC2(2);
	FUNC4(FUNC1(y, x, string));
	FUNC5(string);
}