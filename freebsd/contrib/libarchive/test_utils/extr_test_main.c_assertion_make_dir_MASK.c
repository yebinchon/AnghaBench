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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char const*,int) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,int) ; 

int
FUNC7(const char *file, int line, const char *dirname, int mode)
{
	FUNC1(file, line);
#if defined(_WIN32) && !defined(__CYGWIN__)
	(void)mode; /* UNUSED */
	if (0 == _mkdir(dirname))
		return (1);
#else
	if (0 == FUNC6(dirname, mode)) {
		if (0 == FUNC3(dirname, mode)) {
			FUNC2(file, line, dirname, mode);
			return (1);
		}
	}
#endif
	FUNC5(file, line, "Could not create directory %s", dirname);
	FUNC4(NULL);
	return(0);
}