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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  testprog ; 

__attribute__((used)) static void
FUNC6(const char *target, const char *pack_options,
    const char *unpack_options, const char *flist)
{
	int r;

	FUNC3(target, 0775);

	/* Use the tar program to create an archive. */
	r = FUNC5("%s cf - %s %s >%s/archive 2>%s/pack.err", testprog, pack_options, flist, target, target);
	FUNC4("Error invoking %s cf -", testprog, pack_options);
	FUNC2(r, 0);

	FUNC0(target);

	/* Verify that nothing went to stderr. */
	FUNC1("pack.err");

	/*
	 * Use tar to unpack the archive into another directory.
	 */
	r = FUNC5("%s xf archive %s >unpack.out 2>unpack.err",
	    testprog, unpack_options);
	FUNC4("Error invoking %s xf archive %s", testprog, unpack_options);
	FUNC2(r, 0);

	/* Verify that nothing went to stderr. */
	FUNC1("unpack.err");
	FUNC0("..");
}