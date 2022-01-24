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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ guest ; 
 scalar_t__ FUNC4 (char*,int) ; 
 scalar_t__ noguestmkd ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

void
FUNC7(char *name)
{
	char *s;

	FUNC0("mkdir", name);
	if (guest && noguestmkd)
		FUNC6(550, "Operation not permitted.");
	else if (FUNC4(name, 0777) < 0)
		FUNC5(550, name);
	else {
		if ((s = FUNC1(name)) == NULL)
			FUNC2("Ran out of memory.");
		FUNC6(257, "\"%s\" directory created.", s);
		FUNC3(s);
	}
}