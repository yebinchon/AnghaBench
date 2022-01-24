#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  rl_lock; int /*<<< orphan*/  rl_tree; } ;
typedef  TYPE_1__ rangelock_t ;
struct TYPE_9__ {scalar_t__ lr_type; int lr_count; int /*<<< orphan*/  lr_read_cv; scalar_t__ lr_read_wanted; int /*<<< orphan*/  lr_write_cv; scalar_t__ lr_write_wanted; int /*<<< orphan*/  lr_proxy; TYPE_1__* lr_rangelock; } ;
typedef  TYPE_2__ locked_range_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RL_READER ; 
 scalar_t__ RL_WRITER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 

void
FUNC8(locked_range_t *lr)
{
	rangelock_t *rl = lr->lr_rangelock;

	FUNC0(lr->lr_type == RL_WRITER || lr->lr_type == RL_READER);
	FUNC0(lr->lr_count == 1 || lr->lr_count == 0);
	FUNC0(!lr->lr_proxy);

	FUNC5(&rl->rl_lock);
	if (lr->lr_type == RL_WRITER) {
		/* writer locks can't be shared or split */
		FUNC1(&rl->rl_tree, lr);
		FUNC6(&rl->rl_lock);
		if (lr->lr_write_wanted) {
			FUNC2(&lr->lr_write_cv);
			FUNC3(&lr->lr_write_cv);
		}
		if (lr->lr_read_wanted) {
			FUNC2(&lr->lr_read_cv);
			FUNC3(&lr->lr_read_cv);
		}
		FUNC4(lr, sizeof (locked_range_t));
	} else {
		/*
		 * lock may be shared, let rangelock_exit_reader()
		 * release the lock and free the rl_t
		 */
		FUNC7(rl, lr);
		FUNC6(&rl->rl_lock);
	}
}