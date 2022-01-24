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
typedef  int uint64_t ;
struct TYPE_6__ {int ms_weight; int ms_activation_weight; int ms_loaded; int /*<<< orphan*/  ms_group; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_1__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int METASLAB_ACTIVE_MASK ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(metaslab_t *msp, int allocator, uint64_t activation_weight)
{
	FUNC0(FUNC1(&msp->ms_lock));

	if ((msp->ms_weight & METASLAB_ACTIVE_MASK) == 0) {
		int error = FUNC4(msp);
		if (error != 0) {
			FUNC3(msp->ms_group, msp, 0);
			return (error);
		}
		if ((msp->ms_weight & METASLAB_ACTIVE_MASK) != 0) {
			/*
			 * The metaslab was activated for another allocator
			 * while we were waiting, we should reselect.
			 */
			return (EBUSY);
		}
		if ((error = FUNC2(msp->ms_group, msp,
		    allocator, activation_weight)) != 0) {
			return (error);
		}

		msp->ms_activation_weight = msp->ms_weight;
		FUNC3(msp->ms_group, msp,
		    msp->ms_weight | activation_weight);
	}
	FUNC0(msp->ms_loaded);
	FUNC0(msp->ms_weight & METASLAB_ACTIVE_MASK);

	return (0);
}