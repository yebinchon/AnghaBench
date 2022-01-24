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
struct testcase_t {int flags; } ;
struct basic_test_data {int* pair; scalar_t__ base; } ;

/* Variables and functions */
 int TT_FORK ; 
 int TT_NEED_BASE ; 
 int TT_NEED_DNS ; 
 int TT_NEED_SOCKETPAIR ; 
 int TT_NO_LOGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct basic_test_data*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7(const struct testcase_t *testcase, void *ptr)
{
	struct basic_test_data *data = ptr;

	if (testcase->flags & TT_NO_LOGS)
		FUNC3(NULL);

	if (testcase->flags & TT_NEED_SOCKETPAIR) {
		if (data->pair[0] != -1)
			FUNC4(data->pair[0]);
		if (data->pair[1] != -1)
			FUNC4(data->pair[1]);
	}

	if (testcase->flags & TT_NEED_DNS) {
		FUNC0(0);
	}

	if (testcase->flags & TT_NEED_BASE) {
		if (data->base) {
			FUNC1(data->base);
			FUNC2(data->base);
		}
	}

	if (testcase->flags & TT_FORK)
		FUNC6();

	FUNC5(data);

	return 1;
}