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
 int TT_ENABLED_ ; 
 int TT_OFF_BY_DEFAULT ; 
 int TT_SKIP ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (struct testgroup_t*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct testgroup_t*,char const*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct testgroup_t *groups, const char *test)
{
	int flag = TT_ENABLED_;
	int n = 0;
	if (test[0] == '@') {
		return FUNC1(groups, test + 1);
	} else if (test[0] == ':') {
		++test;
		flag = TT_SKIP;
	} else if (test[0] == '+') {
		++test;
		++n;
		if (!FUNC2(groups, test, 0, TT_OFF_BY_DEFAULT)) {
			FUNC0("No such test as %s!\n", test);
			return -1;
		}
	} else {
		++n;
	}
	if (!FUNC2(groups, test, 1, flag)) {
		FUNC0("No such test as %s!\n", test);
		return -1;
	}
	return n;
}