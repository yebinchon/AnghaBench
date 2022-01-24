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
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_retstack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_retstack*) ; 
 int FUNC1 (struct pt_retstack*) ; 
 int FUNC2 (struct pt_retstack*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pt_retstack*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC8(void)
{
	struct pt_retstack retstack;
	uint64_t ip;
	int status;

	FUNC0(&retstack);

	status = FUNC3(&retstack, 0x42ull);
	FUNC4(status, 0);

	status = FUNC1(&retstack);
	FUNC4(status, 0);

	status = FUNC2(&retstack, &ip);
	FUNC4(status, 0);
	FUNC7(ip, 0x42ull);

	status = FUNC1(&retstack);
	FUNC5(status, 0);

	return FUNC6();
}