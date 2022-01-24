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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(const char *name)
{

	if (FUNC5(name, "help") == 0)
		return (1);
	else if (FUNC5(name, "list") == 0)
		return (FUNC1());
	else if (FUNC5(name, "status") == 0)
		return (FUNC3());
	else if (FUNC5(name, "load") == 0)
		return (FUNC2());
	else if (FUNC5(name, "unload") == 0)
		return (FUNC4());
	else
		FUNC0(!"Unknown standard command.");
	return (0);
}