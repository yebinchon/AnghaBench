#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ms_max_size; int /*<<< orphan*/  ms_weight; int /*<<< orphan*/  ms_loaded; int /*<<< orphan*/  ms_allocatable; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_1__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  METASLAB_ACTIVE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(metaslab_t *msp)
{
	FUNC0(FUNC1(&msp->ms_lock));
	FUNC2(msp->ms_allocatable, NULL, NULL);
	msp->ms_loaded = B_FALSE;
	msp->ms_weight &= ~METASLAB_ACTIVE_MASK;
	msp->ms_max_size = 0;
}