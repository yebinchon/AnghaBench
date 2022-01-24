#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* s; } ;
struct TYPE_3__ {unsigned int coremask; int exit; unsigned int checkin; } ;

/* Variables and functions */
 int CVMX_COREMASK_MAX_SYNCS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ state ; 

void FUNC5(unsigned int coremask)
{
    int i;
    unsigned int target;

    FUNC0(coremask != 0);

    FUNC3(&state.lock);

    for (i = 0; i < CVMX_COREMASK_MAX_SYNCS; i++) {

        if (state.s[i].coremask == 0) {
            /* end of existing coremask list, create new entry, fall-thru */
            state.s[i].coremask = coremask;
        }

        if (state.s[i].coremask == coremask) {

            target = state.s[i].exit + 1;  /* wrap-around at 32b */

            state.s[i].checkin |= FUNC1(FUNC2());
            if (state.s[i].checkin == coremask) {
                state.s[i].checkin = 0;
                state.s[i].exit = target;  /* signal exit condition */
            }
            FUNC4(&state.lock);

            while (state.s[i].exit != target)
                ;

            return;
        }
    }

    /* error condition - coremask array overflowed */
    FUNC4(&state.lock);
    FUNC0(0);
}