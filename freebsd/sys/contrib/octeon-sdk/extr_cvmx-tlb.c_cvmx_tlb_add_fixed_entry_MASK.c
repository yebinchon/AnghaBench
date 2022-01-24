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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

int FUNC5( uint64_t vaddr, uint64_t paddr, uint64_t size, uint64_t tlb_flags) {

    uint64_t index;
    int ret = 0;

    FUNC0(index);

    /* Check to make sure if the index is free to use */
    if (index < (uint32_t)FUNC3() && FUNC2(index) ) {
	FUNC4(index, vaddr, paddr, size, tlb_flags);

	if (!FUNC2(index)) {
        	/* Bump up the wired register*/
        	FUNC1(index + 1);
		ret  = 1;
	}
    }
    return ret;
}