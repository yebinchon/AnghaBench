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
struct stat {int st_mode; } ;
typedef  int mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (char const*,struct stat*) ; 

int
FUNC6(const char *file, int line, const char *pathname, int mode)
{
	struct stat st;
	int r;

#if defined(_WIN32) && !defined(__CYGWIN__)
	(void)mode; /* UNUSED */
#endif
	FUNC1(file, line);
	r = FUNC5(pathname, &st);
	if (r != 0) {
		FUNC3(file, line, "Dir should exist: %s", pathname);
		FUNC2(NULL);
		return (0);
	}
	if (!FUNC0(st.st_mode)) {
		FUNC3(file, line, "%s is not a dir", pathname);
		FUNC2(NULL);
		return (0);
	}
#if !defined(_WIN32) || defined(__CYGWIN__)
	/* Windows doesn't handle permissions the same way as POSIX,
	 * so just ignore the mode tests. */
	/* TODO: Can we do better here? */
	if (mode >= 0 && (mode_t)mode != (st.st_mode & 07777)) {
		FUNC3(file, line, "Dir %s has wrong mode", pathname);
		FUNC4("  Expected: 0%3o\n", mode);
		FUNC4("  Found: 0%3o\n", st.st_mode & 07777);
		FUNC2(NULL);
		return (0);
	}
#endif
	return (1);
}