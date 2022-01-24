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
struct ctl_be_block_softc {int /*<<< orphan*/  lock; } ;
struct ctl_be_block_lun {int flags; struct ctl_be_block_softc* softc; } ;

/* Variables and functions */
 int CTL_BE_BLOCK_LUN_UNCONFIGURED ; 
 int CTL_BE_BLOCK_LUN_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_be_block_lun*) ; 

__attribute__((used)) static void
FUNC3(void *be_lun)
{
	struct ctl_be_block_lun *lun = be_lun;
	struct ctl_be_block_softc *softc = lun->softc;

	FUNC0(&softc->lock);
	lun->flags |= CTL_BE_BLOCK_LUN_UNCONFIGURED;
	if (lun->flags & CTL_BE_BLOCK_LUN_WAITING)
		FUNC2(lun);
	FUNC1(&softc->lock);
}