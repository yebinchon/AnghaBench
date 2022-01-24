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
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,...) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  testprog ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(const char *target,
    const char *pack_options,
    const char *unpack_options,
    const char *se, const char *se2)
{
	int r;

	if (!FUNC2(target, 0775))
	    return;

	/* Use the cpio program to create an archive. */
	r = FUNC5("%s -R 1000:1000 -o %s < filelist >%s/archive 2>%s/pack.err",
	    testprog, pack_options, target, target);
	FUNC4("Error invoking %s -o %s", testprog, pack_options);
	FUNC1(r, 0);

	FUNC0(target);

	/* Verify stderr. */
	FUNC4("Expected: %s, options=%s", se, pack_options);
	FUNC3(se, "pack.err");

	/*
	 * Use cpio to unpack the archive into another directory.
	 */
	r = FUNC5("%s -i %s< archive >unpack.out 2>unpack.err",
	    testprog, unpack_options);
	FUNC4("Error invoking %s -i %s", testprog, unpack_options);
	FUNC1(r, 0);

	/* Verify stderr. */
	FUNC4("Error invoking %s -i %s in dir %s", testprog, unpack_options, target);
	FUNC3(se2, "unpack.err");

	FUNC6(pack_options);

	FUNC0("..");
}