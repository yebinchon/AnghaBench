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
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(int try, int argc, char* argv[])
{
	char *cp;

	for (try = 0; (cp = FUNC0(try)) != NULL; try++)
		if (FUNC1(cp, argc - 1, argv + 1) != 0)
			FUNC2("can't load '%s'\n", cp);
		else
			return 1;
	return 0;
}