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
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,size_t,int /*<<< orphan*/ ,int*) ; 

void *
FUNC3(void *new_addr, size_t size, size_t alignment, bool *zero,
    bool *commit) {
	void *ret = FUNC2(new_addr, size, FUNC0(alignment,
	    PAGE), commit);
	if (ret == NULL) {
		return NULL;
	}
	FUNC1(ret != NULL);
	if (*commit) {
		*zero = true;
	}
	return ret;
}