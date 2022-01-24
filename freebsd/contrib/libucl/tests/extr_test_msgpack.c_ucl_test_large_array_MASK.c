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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ucl_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recursion ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

__attribute__((used)) static ucl_object_t*
FUNC4 (void)
{
	ucl_object_t *res, *cur;
	int count, i;
	uint32_t cur_len;

	res = FUNC2 (UCL_ARRAY);
	count = 65537;

	recursion ++;

	for (i = 0; i < count; i ++) {
		cur = FUNC3 ();
		FUNC0 (cur != NULL);

		FUNC1 (res, cur);
	}

	return res;
}