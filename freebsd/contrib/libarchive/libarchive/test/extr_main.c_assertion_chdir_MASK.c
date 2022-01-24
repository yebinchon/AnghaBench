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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char*,char const*) ; 

int
FUNC4(const char *file, int line, const char *pathname)
{
	FUNC0(file, line);
	if (FUNC1(pathname) == 0)
		return (1);
	FUNC3(file, line, "chdir(\"%s\")", pathname);
	FUNC2(NULL);
	return (0);

}