#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ task_action; int /*<<< orphan*/  task_status; } ;
struct TYPE_4__ {size_t targ_mapped_lun; int /*<<< orphan*/  initid; int /*<<< orphan*/  targ_port; } ;
struct TYPE_5__ {int flags; TYPE_1__ nexus; } ;
union ctl_io {TYPE_3__ taskio; TYPE_2__ io_hdr; } ;
typedef  size_t uint32_t ;
struct ctl_softc {int /*<<< orphan*/  ctl_lock; struct ctl_lun** ctl_luns; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; } ;

/* Variables and functions */
 int CTL_FLAG_FROM_OTHER_SC ; 
 struct ctl_softc* FUNC0 (union ctl_io*) ; 
 scalar_t__ CTL_TASK_ABORT_TASK_SET ; 
 int /*<<< orphan*/  CTL_TASK_FUNCTION_COMPLETE ; 
 int /*<<< orphan*/  CTL_TASK_LUN_DOES_NOT_EXIST ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t ctl_max_luns ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(union ctl_io *io)
{
	struct ctl_softc *softc = FUNC0(io);
	struct ctl_lun *lun;
	uint32_t targ_lun;

	/*
	 * Look up the LUN.
	 */
	targ_lun = io->io_hdr.nexus.targ_mapped_lun;
	FUNC2(&softc->ctl_lock);
	if (targ_lun >= ctl_max_luns ||
	    (lun = softc->ctl_luns[targ_lun]) == NULL) {
		FUNC3(&softc->ctl_lock);
		io->taskio.task_status = CTL_TASK_LUN_DOES_NOT_EXIST;
		return (1);
	}

	FUNC2(&lun->lun_lock);
	FUNC3(&softc->ctl_lock);
	if (io->taskio.task_action == CTL_TASK_ABORT_TASK_SET) {
		FUNC1(lun, io->io_hdr.nexus.targ_port,
		    io->io_hdr.nexus.initid,
		    (io->io_hdr.flags & CTL_FLAG_FROM_OTHER_SC) != 0);
	} else { /* CTL_TASK_CLEAR_TASK_SET */
		FUNC1(lun, UINT32_MAX, UINT32_MAX,
		    (io->io_hdr.flags & CTL_FLAG_FROM_OTHER_SC) != 0);
	}
	FUNC3(&lun->lun_lock);
	io->taskio.task_status = CTL_TASK_FUNCTION_COMPLETE;
	return (0);
}