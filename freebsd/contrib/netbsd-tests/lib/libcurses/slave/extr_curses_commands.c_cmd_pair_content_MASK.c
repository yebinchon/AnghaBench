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
 int /*<<< orphan*/  FUNC1 (short,short*,short*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (short) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,short*) ; 

void
FUNC7(int nargs, char **args)
{
	short pair, fore, back;

	if (FUNC0(nargs, 1) == 1)
		return;

	if (FUNC6(args[0], "%hd", &pair) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	/* XXX - call3 */
	FUNC2(3);
	FUNC5(FUNC1(pair, &fore, &back));
	FUNC4(fore);
	FUNC4(back);
}