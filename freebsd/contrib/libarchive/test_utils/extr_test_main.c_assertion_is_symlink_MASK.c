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
 int /*<<< orphan*/  FUNC1 (char const*,int,char*,char const*,...) ; 
 scalar_t__ FUNC2 (char const*,int,char const*,char const*,int) ; 

int
FUNC3(const char *file, int line,
    const char *path, const char *contents, int isdir)
{
	if (FUNC2(file, line, path, contents, isdir))
		return (1);
	if (contents)
		FUNC1(file, line, "File %s is not a symlink to %s",
		    path, contents);
	else
		FUNC1(file, line, "File %s is not a symlink", path);
	FUNC0(NULL);
	return (0);
}