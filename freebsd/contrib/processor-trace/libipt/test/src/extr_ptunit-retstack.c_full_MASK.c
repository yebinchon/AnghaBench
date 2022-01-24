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
typedef  scalar_t__ uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_retstack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_retstack*) ; 
 int FUNC1 (struct pt_retstack*) ; 
 int FUNC2 (struct pt_retstack*,scalar_t__*) ; 
 int FUNC3 (struct pt_retstack*,scalar_t__) ; 
 scalar_t__ pt_retstack_size ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct ptunit_result FUNC8(void)
{
	struct pt_retstack retstack;
	uint64_t ip, idx;
	int status;

	FUNC0(&retstack);

	for (idx = 0; idx < pt_retstack_size; ++idx) {
		status = FUNC3(&retstack, idx);
		FUNC4(status, 0);
	}

	status = FUNC1(&retstack);
	FUNC4(status, 0);

	for (idx = pt_retstack_size; idx > 0;) {
		idx -= 1;

		status = FUNC2(&retstack, &ip);
		FUNC4(status, 0);
		FUNC7(ip, idx);
	}

	status = FUNC1(&retstack);
	FUNC5(status, 0);

	return FUNC6();
}