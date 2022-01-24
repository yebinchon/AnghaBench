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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char*,char const*) ; 
 int FUNC4 (char const*,struct stat*) ; 
 size_t FUNC5 (char const*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 

__attribute__((used)) static int
FUNC7(const char *file, int line,
    const char *pathname, const char *contents)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	(void)pathname; /* UNUSED */
	(void)contents; /* UNUSED */
	assertion_count(file, line);
	/* Windows sort-of has real symlinks, but they're only usable
	 * by privileged users and are crippled even then, so there's
	 * really not much point in bothering with this. */
	return (0);
#else
	char buff[300];
	struct stat st;
	ssize_t linklen;
	int r;

	FUNC1(file, line);
	r = FUNC4(pathname, &st);
	if (r != 0) {
		FUNC3(file, line,
		    "Symlink should exist: %s", pathname);
		FUNC2(NULL);
		return (0);
	}
	if (!FUNC0(st.st_mode))
		return (0);
	if (contents == NULL)
		return (1);
	linklen = FUNC5(pathname, buff, sizeof(buff));
	if (linklen < 0) {
		FUNC3(file, line, "Can't read symlink %s", pathname);
		FUNC2(NULL);
		return (0);
	}
	buff[linklen] = '\0';
	if (FUNC6(buff, contents) != 0)
		return (0);
	return (1);
#endif
}