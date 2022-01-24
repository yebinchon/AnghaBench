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
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(void)
{
	int test1[] = { 1, 2, 3, 4, 5, 6, 0 };
	int test2[] = { 1, -1, 0 };
	int test3[] = { 1, 1, 1, -1, 2, 3, 4, 1, 2, 0 };
	int test3_res[] = { -1, 1, 2, 3, 4, 0 };
	int errors = 0;
	int len;

	FUNC3(MSG_INFO, "int_array tests");

	if (FUNC0(test1) != 6 ||
	    FUNC0(test2) != 2)
		errors++;

	FUNC1(test3);
	len = FUNC0(test3_res);
	if (FUNC0(test3) != len)
		errors++;
	else if (FUNC2(test3, test3_res, len * sizeof(int)) != 0)
		errors++;

	if (errors) {
		FUNC3(MSG_ERROR, "%d int_array test(s) failed", errors);
		return -1;
	}

	return 0;
}