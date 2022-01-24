#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ms_load_cv; scalar_t__ ms_loading; scalar_t__ ms_loaded; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_1__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int
FUNC6(metaslab_t *msp)
{
	FUNC0(FUNC1(&msp->ms_lock));

	/*
	 * There may be another thread loading the same metaslab, if that's
	 * the case just wait until the other thread is done and return.
	 */
	FUNC5(msp);
	if (msp->ms_loaded)
		return (0);
	FUNC2(!msp->ms_loading);

	msp->ms_loading = B_TRUE;
	int error = FUNC4(msp);
	msp->ms_loading = B_FALSE;
	FUNC3(&msp->ms_load_cv);

	return (error);
}