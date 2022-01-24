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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*,int*) ; 

void
FUNC9(int nargs, char **args)
{
	int limit;
	chtype *string;

	if (FUNC0(nargs, 1) == 1)
		return;

	if (FUNC8(args[0], "%d", &limit) == 0) {
		FUNC4(1);
		FUNC5("BAD ARGUMENT");
		return;
	}

	if ((string = FUNC3((limit + 1) * sizeof(chtype))) == NULL) {
		FUNC4(1);
		FUNC5("MALLOC_FAILED");
		return;
	}

	/* XXX call2 */
	FUNC4(2);
	FUNC7(FUNC2(string, limit));
	FUNC6(string);
	FUNC1(string);
}