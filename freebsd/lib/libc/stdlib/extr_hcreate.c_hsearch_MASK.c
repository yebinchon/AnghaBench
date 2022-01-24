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
typedef  int /*<<< orphan*/  ENTRY ;
typedef  int /*<<< orphan*/  ACTION ;

/* Variables and functions */
 int /*<<< orphan*/  global_hashtable ; 
 int global_hashtable_initialized ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

ENTRY *
FUNC2(ENTRY item, ACTION action)
{
	ENTRY *retval;

	/* Create global hash table if needed. */
	if (!global_hashtable_initialized) {
		if (FUNC0(0, &global_hashtable) == 0)
			return (NULL);
		global_hashtable_initialized = true;
	}
	if (FUNC1(item, action, &retval, &global_hashtable) == 0)
		return (NULL);
	return (retval);
}