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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 

void
FUNC6(void)
{
	char *s, path[MAXPATHLEN + 1];

	if (FUNC3(path, sizeof(path)) == NULL)
		FUNC4(550, "Get current directory");
	else {
		if ((s = FUNC0(path)) == NULL)
			FUNC1("Ran out of memory.");
		FUNC5(257, "\"%s\" is current directory.", s);
		FUNC2(s);
	}
}