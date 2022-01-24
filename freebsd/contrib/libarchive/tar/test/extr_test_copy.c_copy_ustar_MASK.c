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
 int /*<<< orphan*/  LIMIT_USTAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  testprog ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void)
{
	const char *target = "ustar";
	int r;

	/* NOTE: for proper operation on cygwin-1.5 and windows, the
	 * length of the name of the directory below, "ustar", must be
	 * less than or equal to the length of the name of the original
	 * directory, "original"  This restriction derives from the
	 * extremely limited pathname lengths on those platforms.
	 */
	FUNC2(target, 0775);
	FUNC1(0, FUNC3(target));

	/*
	 * Use the tar program to create an archive.
	 */
	r = FUNC5("%s cf archive --format=ustar -C ../original f d l m s >pack.out 2>pack.err",
	    testprog);
	FUNC4("Error invoking \"%s cf archive --format=ustar\"", testprog);
	FUNC1(r, 0);

	/* Verify that nothing went to stdout. */
	FUNC0("pack.out");
	/* Stderr is non-empty, since there are a bunch of files
	 * with filenames too long to archive. */

	/*
	 * Use tar to unpack the archive into another directory.
	 */
	r = FUNC5("%s xf archive >unpack.out 2>unpack.err", testprog);
	FUNC4("Error invoking %s xf archive", testprog);
	FUNC1(r, 0);

	/* Verify that nothing went to stdout or stderr. */
	FUNC0("unpack.err");
	FUNC0("unpack.out");

	FUNC6(LIMIT_USTAR);
	FUNC1(0, FUNC3("../.."));
}