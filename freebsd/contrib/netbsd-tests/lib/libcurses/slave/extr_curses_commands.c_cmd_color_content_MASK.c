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
 int /*<<< orphan*/  FUNC1 (short,short*,short*,short*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (short) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,short*) ; 

void
FUNC7(int nargs, char **args)
{
	short colour, red, green, blue;

	if (FUNC0(nargs, 1) == 1)
		return;

	if (FUNC6(args[0], "%hd", &colour) == 0) {
		FUNC2(1);
		FUNC3("BAD ARGUMENT");
		return;
	}

	/* XXX - call4 */
	FUNC2(4);
	FUNC5(FUNC1(colour, &red, &green, &blue));
	FUNC4(red);
	FUNC4(green);
	FUNC4(blue);
}