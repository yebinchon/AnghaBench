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
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  testprog ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(const char *target)
{
	int r;

	if (!FUNC2(target, 0775))
		return;

	/*
	 * Use cpio passthrough mode to copy files to another directory.
	 */
	r = FUNC5("%s -p %s <filelist >%s/stdout 2>%s/stderr",
	    testprog, target, target, target);
	FUNC4("Error invoking %s -p", testprog);
	FUNC1(r, 0);

	FUNC0(target);

	/* Verify stderr. */
	FUNC4("Error invoking %s -p in dir %s",
	    testprog, target);
	FUNC3("1 block\n", "stderr");

	FUNC6("passthrough");
	FUNC0("..");
}