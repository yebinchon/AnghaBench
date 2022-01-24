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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(void)
{
    uint32_t i, ret = -1;

    for (i = FUNC1(); i< (uint32_t)FUNC2(); i++) {

    	/* Check to make sure the index is free to use */
        if (FUNC0(i)) {
		/* Found and return */
        	ret = i;
        	break;
	}
    }

    return ret;
}