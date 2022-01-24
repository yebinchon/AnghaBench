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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (void const*,void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (int) ; 
 scalar_t__ FUNC10 (void const*,char*,int) ; 

int
FUNC11(const char *filename, int line, const void *buff, int s, const char *fn)
{
	char *contents;
	FILE *f;
	int n;

	FUNC0(filename, line);

	f = FUNC4(fn, "rb");
	if (f == NULL) {
		FUNC2(filename, line,
		    "File should exist: %s", fn);
		FUNC1(NULL);
		return (0);
	}
	contents = FUNC9(s * 2);
	n = (int)FUNC5(contents, 1, s * 2, f);
	FUNC3(f);
	if (n == s && FUNC10(buff, contents, s) == 0) {
		FUNC6(contents);
		return (1);
	}
	FUNC2(filename, line, "File contents don't match");
	FUNC8("  file=\"%s\"\n", fn);
	if (n > 0)
		FUNC7(contents, buff, n > 512 ? 512 : n, 0);
	else {
		FUNC8("  File empty, contents should be:\n");
		FUNC7(buff, NULL, s > 512 ? 512 : s, 0);
	}
	FUNC1(NULL);
	FUNC6(contents);
	return (0);
}