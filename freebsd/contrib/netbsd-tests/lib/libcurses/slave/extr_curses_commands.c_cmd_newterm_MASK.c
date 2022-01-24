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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(int nargs, char **args)
{
	FILE *in, *out;

	if (FUNC0(nargs, 3) == 1)
		return;

	if ((in = FUNC1(args[1], "rw")) == NULL) {
		FUNC3(1);
		FUNC4("BAD FILE_ARGUMENT");
		return;
	}


	if ((out = FUNC1(args[2], "rw")) == NULL) {
		FUNC3(1);
		FUNC4("BAD FILE_ARGUMENT");
		return;
	}

	FUNC3(1);
	FUNC5(FUNC2(args[0], out, in));
}