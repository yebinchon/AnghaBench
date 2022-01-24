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
struct printc {int dummy; } ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  be ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct printc*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC7(const char *dsname, struct printc *pc)
{
	nvpair_t *cur;
	nvlist_t *props, *sprops;

	if (FUNC1(&props) != 0) {
		FUNC2(stderr, "bectl list: failed to allocate snapshot nvlist\n");
		return (1);
	}
	if (FUNC0(be, dsname, props) != 0) {
		FUNC2(stderr, "bectl list: failed to fetch boot ds snapshots\n");
		return (1);
	}
	for (cur = FUNC3(props, NULL); cur != NULL;
	    cur = FUNC3(props, cur)) {
		FUNC5(cur, &sprops);
		FUNC6(FUNC4(cur), sprops, pc);
	}
	return (0);
}