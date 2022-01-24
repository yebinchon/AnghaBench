#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ms_initializing; int /*<<< orphan*/  ms_lock; TYPE_2__* ms_group; } ;
typedef  TYPE_1__ metaslab_t ;
struct TYPE_5__ {int /*<<< orphan*/  mg_ms_initialize_lock; int /*<<< orphan*/  mg_ms_initialize_cv; int /*<<< orphan*/  mg_ms_initializing; } ;
typedef  TYPE_2__ metaslab_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(metaslab_t *msp)
{
	FUNC0(!FUNC1(&msp->ms_lock));
	metaslab_group_t *mg = msp->ms_group;
	FUNC3(&mg->mg_ms_initialize_lock);
	FUNC3(&msp->ms_lock);
	if (--msp->ms_initializing == 0) {
		mg->mg_ms_initializing--;
		FUNC2(&mg->mg_ms_initialize_cv);
	}
	FUNC4(&msp->ms_lock);
	FUNC4(&mg->mg_ms_initialize_lock);
}