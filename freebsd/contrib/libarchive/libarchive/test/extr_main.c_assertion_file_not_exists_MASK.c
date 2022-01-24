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
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char*,char const*) ; 

int
FUNC5(const char *filename, int line, const char *f)
{
	FUNC2(filename, line);

#if defined(_WIN32) && !defined(__CYGWIN__)
	if (_access(f, 0))
		return (1);
#else
	if (FUNC1(f, F_OK))
		return (1);
#endif
	FUNC4(filename, line, "File should not exist: %s", f);
	FUNC3(NULL);
	return (0);
}