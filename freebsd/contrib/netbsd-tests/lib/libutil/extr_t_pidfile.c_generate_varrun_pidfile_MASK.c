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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  _PATH_VARRUN ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char const* FUNC3 () ; 
 scalar_t__ in_child ; 

__attribute__((used)) static char *
FUNC4(const char *basename)
{
	char *path;

	if (FUNC0(&path, "%d%s.pid", _PATH_VARRUN,
	    basename == NULL ? FUNC3() : basename) == -1) {
		if (in_child)
			FUNC2(EXIT_FAILURE, "Cannot allocate memory for path");
		else
			FUNC1("Cannot allocate memory for path");
	}

	return path;
}