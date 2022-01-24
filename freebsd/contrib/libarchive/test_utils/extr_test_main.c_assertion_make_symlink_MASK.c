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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

int
FUNC6(const char *file, int line,
    const char *newpath, const char *linkto, int targetIsDir)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	assertion_count(file, line);
	if (my_CreateSymbolicLinkA(newpath, linkto, targetIsDir))
		return (1);
#elif HAVE_SYMLINK
	(void)targetIsDir; /* UNUSED */
	assertion_count(file, line);
	if (0 == symlink(linkto, newpath))
		return (1);
#else
	(void)targetIsDir; /* UNUSED */
#endif
	FUNC2(file, line, "Could not create symlink");
	FUNC3("   New link: %s\n", newpath);
	FUNC3("   Old name: %s\n", linkto);
	FUNC1(NULL);
	return(0);
}