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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ key_cnt ; 
 int /*<<< orphan*/ * key_ptr ; 
 scalar_t__ restoreKeyDb ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{	
	if (restoreKeyDb) {
		key_cnt = 0;
		FUNC0(key_ptr);
		key_ptr = NULL;
	}

	FUNC1(); /* only on the final test!! if counter == 0 etc... */
}