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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int,char const*,char const*) ; 

int
FUNC3(const char *file, int line,
    const char *path1, const char *path2)
{
	if (FUNC2(file, line, path1, path2))
		return (1);
	FUNC1(file, line,
	    "Files %s and %s are not hardlinked", path1, path2);
	FUNC0(NULL);
	return (0);
}