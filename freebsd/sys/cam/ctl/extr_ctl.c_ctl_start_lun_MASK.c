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
struct ctl_lun {int /*<<< orphan*/  lun_lock; int /*<<< orphan*/  flags; } ;
struct ctl_be_lun {scalar_t__ ctl_lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_LUN_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct ctl_be_lun *be_lun)
{
	struct ctl_lun *lun = (struct ctl_lun *)be_lun->ctl_lun;

	FUNC0(&lun->lun_lock);
	lun->flags &= ~CTL_LUN_STOPPED;
	FUNC1(&lun->lun_lock);
	return (0);
}