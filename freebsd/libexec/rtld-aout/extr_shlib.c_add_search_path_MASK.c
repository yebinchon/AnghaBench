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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char**,char*) ; 

void
FUNC4(char *path)
{
	register char	*cp, *dup;

	if (path == NULL)
		return;

	/* Add search directories from `path' */
	path = dup = FUNC2(path);
	while ((cp = FUNC3(&path, ":")) != NULL)
		FUNC0(cp);
	FUNC1(dup);
}