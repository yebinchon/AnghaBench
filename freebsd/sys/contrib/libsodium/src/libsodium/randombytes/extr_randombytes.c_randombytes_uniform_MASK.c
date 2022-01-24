#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int (* uniform ) (int const) ;} ;

/* Variables and functions */
 TYPE_1__* implementation ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int const) ; 

uint32_t
FUNC3(const uint32_t upper_bound)
{
    uint32_t min;
    uint32_t r;

#ifndef __EMSCRIPTEN__
    FUNC0();
    if (implementation->uniform != NULL) {
        return implementation->uniform(upper_bound);
    }
#endif
    if (upper_bound < 2) {
        return 0;
    }
    min = (1U + ~upper_bound) % upper_bound; /* = 2**32 mod upper_bound */
    do {
        r = FUNC1();
    } while (r < min);
    /* r is now clamped to a set whose size mod upper_bound == 0
     * the worst case (2**31+1) requires ~ 2 attempts */

    return r % upper_bound;
}