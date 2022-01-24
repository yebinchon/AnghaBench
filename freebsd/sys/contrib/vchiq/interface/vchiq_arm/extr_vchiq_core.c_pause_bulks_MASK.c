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
struct TYPE_3__ {int /*<<< orphan*/  bulk_transfer_mutex; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pause_bulks_count ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(VCHIQ_STATE_T *state)
{
	if (FUNC4(FUNC1(&pause_bulks_count) != 1)) {
		FUNC0(1);
		FUNC2(&pause_bulks_count, 1);
		return;
	}

	/* Block bulk transfers from all services */
	FUNC3(&state->bulk_transfer_mutex);
}