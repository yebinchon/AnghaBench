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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ DATA_TYPE_STRING ; 
 int E2BIG ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZAP_MAXNAMELEN ; 
 scalar_t__ ZAP_MAXVALUELEN ; 
 char const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int
FUNC7(nvlist_t *nvl)
{
	nvpair_t *pair = NULL;

	while ((pair = FUNC2(nvl, pair)) != NULL) {
		const char *propname = FUNC3(pair);

		if (!FUNC6(propname) ||
		    FUNC4(pair) != DATA_TYPE_STRING)
			return (FUNC0(EINVAL));

		if (FUNC5(propname) >= ZAP_MAXNAMELEN)
			return (FUNC0(ENAMETOOLONG));

		if (FUNC5(FUNC1(pair)) >= ZAP_MAXVALUELEN)
			return (E2BIG);
	}
	return (0);
}