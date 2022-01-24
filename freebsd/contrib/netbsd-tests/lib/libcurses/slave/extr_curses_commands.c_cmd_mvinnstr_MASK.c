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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int*) ; 

void
FUNC9(int nargs, char **args)
{
	int y, x, count;
	char *string;

	if (FUNC0(nargs, 3) == 1)
		return;

	if (FUNC8(args[0], "%d", &y) == 0) {
		FUNC4(1);
		FUNC5("BAD ARGUMENT");
		return;
	}

	if (FUNC8(args[1], "%d", &x) == 0) {
		FUNC4(1);
		FUNC5("BAD ARGUMENT");
		return;
	}

	if (FUNC8(args[2], "%d", &count) == 0) {
		FUNC4(1);
		FUNC5("BAD ARGUMENT");
		return;
	}

	if ((string = FUNC2(count + 1)) == NULL) {
		FUNC4(1);
	FUNC5("MALLOC_FAILED");
		return;
	}

	/* XXX call2 */
	FUNC4(2);
	FUNC6(FUNC3(y, x, string, count));
	FUNC7(string);
	FUNC1(string);
}