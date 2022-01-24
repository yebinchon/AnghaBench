#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ctl_lun {int flags; int /*<<< orphan*/  lun_lock; int /*<<< orphan*/  ooa_queue; } ;
struct ctl_be_lun {scalar_t__ ctl_lun; } ;

/* Variables and functions */
 int CTL_LUN_DISABLED ; 
 int CTL_LUN_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct ctl_be_lun *be_lun)
{
	struct ctl_lun *lun;

	lun = (struct ctl_lun *)be_lun->ctl_lun;

	FUNC2(&lun->lun_lock);

	/*
	 * The LUN needs to be disabled before it can be marked invalid.
	 */
	if ((lun->flags & CTL_LUN_DISABLED) == 0) {
		FUNC3(&lun->lun_lock);
		return (-1);
	}
	/*
	 * Mark the LUN invalid.
	 */
	lun->flags |= CTL_LUN_INVALID;

	/*
	 * If there is nothing in the OOA queue, go ahead and free the LUN.
	 * If we have something in the OOA queue, we'll free it when the
	 * last I/O completes.
	 */
	if (FUNC0(&lun->ooa_queue)) {
		FUNC3(&lun->lun_lock);
		FUNC1(lun);
	} else
		FUNC3(&lun->lun_lock);

	return (0);
}