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
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*,char const*) ; 

int
FUNC6(const char *file, int line,
    const char *newpath, const char *linkto)
{
	int succeeded;

	FUNC0(file, line);
#if defined(_WIN32) && !defined(__CYGWIN__)
	succeeded = my_CreateHardLinkA(newpath, linkto);
#elif HAVE_LINK
	succeeded = !link(linkto, newpath);
#else
	succeeded = 0;
#endif
	if (succeeded)
		return (1);
	FUNC2(file, line, "Could not create hardlink");
	FUNC4("   New link: %s\n", newpath);
	FUNC4("   Old name: %s\n", linkto);
	FUNC1(NULL);
	return(0);
}