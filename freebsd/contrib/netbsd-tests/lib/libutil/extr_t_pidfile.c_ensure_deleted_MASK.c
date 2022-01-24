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
 int /*<<< orphan*/  R_OK ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ in_child ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *path)
{
	FUNC3("Ensuring pidfile %s does not exist any more\n", path);
	if (FUNC0(path, R_OK) != -1) {
		FUNC4(path);
		if (in_child)
			FUNC2(EXIT_FAILURE, "The pidfile %s was not deleted",
			    path);
		else
			FUNC1("The pidfile %s was not deleted", path);
	}
}