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
 int /*<<< orphan*/  UCL_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (size_t*) ; 
 int /*<<< orphan*/  recursion ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

__attribute__((used)) static ucl_object_t*
FUNC5 (void)
{
	ucl_object_t *res, *cur;
	int count, i;
	uint32_t cur_len;
	size_t klen;
	const char *key;

	res = FUNC3 (UCL_OBJECT);
	count = 65537;

	recursion ++;

	for (i = 0; i < count; i ++) {
		key = FUNC1 (&klen);
		cur = FUNC4 ();
		FUNC0 (cur != NULL);
		FUNC0 (klen != 0);

		FUNC2 (res, cur, key, klen, true);
	}

	return res;
}