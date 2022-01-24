#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ tsd_t ;

/* Variables and functions */
 scalar_t__ malloc_slow ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  tsd_state_nominal ; 
 int /*<<< orphan*/  tsd_state_nominal_slow ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(tsd_t *tsd) {
	if (FUNC0(tsd)) {
		if (malloc_slow || !FUNC2(tsd) ||
		    FUNC1(tsd) > 0) {
			tsd->state = tsd_state_nominal_slow;
		} else {
			tsd->state = tsd_state_nominal;
		}
	}
}