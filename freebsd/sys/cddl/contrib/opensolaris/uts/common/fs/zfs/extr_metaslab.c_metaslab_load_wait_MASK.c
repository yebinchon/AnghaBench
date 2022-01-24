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
struct TYPE_3__ {int /*<<< orphan*/  ms_lock; int /*<<< orphan*/  ms_load_cv; int /*<<< orphan*/  ms_loaded; scalar_t__ ms_loading; } ;
typedef  TYPE_1__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(metaslab_t *msp)
{
	FUNC0(FUNC1(&msp->ms_lock));

	while (msp->ms_loading) {
		FUNC0(!msp->ms_loaded);
		FUNC2(&msp->ms_load_cv, &msp->ms_lock);
	}
}