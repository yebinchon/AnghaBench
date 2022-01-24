#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  svr_cv; int /*<<< orphan*/  svr_lock; int /*<<< orphan*/  svr_allocd_segs; int /*<<< orphan*/ * svr_new_segments; int /*<<< orphan*/ * svr_frees; int /*<<< orphan*/ * svr_max_offset_to_sync; int /*<<< orphan*/ * svr_bytes_done; } ;
typedef  TYPE_1__ spa_vdev_removal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(spa_vdev_removal_t *svr)
{
	for (int i = 0; i < TXG_SIZE; i++) {
		FUNC0(svr->svr_bytes_done[i]);
		FUNC0(svr->svr_max_offset_to_sync[i]);
		FUNC5(svr->svr_frees[i]);
		FUNC3(&svr->svr_new_segments[i]);
	}

	FUNC5(svr->svr_allocd_segs);
	FUNC4(&svr->svr_lock);
	FUNC1(&svr->svr_cv);
	FUNC2(svr, sizeof (*svr));
}