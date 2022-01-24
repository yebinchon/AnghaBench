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
struct testgroup_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct testgroup_t*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct testgroup_t *groups, int list_groups)
{
	FUNC1("Options are: [--verbose|--quiet|--terse] [--no-fork]");
	FUNC1("  Specify tests by name, or using a prefix ending with '..'");
	FUNC1("  To skip a test, prefix its name with a colon.");
	FUNC1("  To enable a disabled test, prefix its name with a plus.");
	FUNC1("  Use --list-tests for a list of tests.");
	if (list_groups) {
		FUNC1("Known tests are:");
		FUNC2(groups, "..", 1, 0);
	}
	FUNC0(0);
}