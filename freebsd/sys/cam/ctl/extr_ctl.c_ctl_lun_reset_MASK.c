#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t targ_mapped_lun; } ;
struct TYPE_7__ {int flags; TYPE_5__ nexus; } ;
struct TYPE_6__ {int /*<<< orphan*/  task_status; } ;
union ctl_io {TYPE_2__ io_hdr; TYPE_1__ taskio; } ;
struct TYPE_9__ {int /*<<< orphan*/ * serializing_sc; int /*<<< orphan*/ * original_sc; TYPE_5__ nexus; int /*<<< orphan*/  msg_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  task_action; } ;
union ctl_ha_msg {TYPE_4__ hdr; TYPE_3__ task; } ;
typedef  size_t uint32_t ;
struct ctl_softc {int /*<<< orphan*/  ctl_lock; struct ctl_lun** ctl_luns; } ;
struct ctl_lun {int dummy; } ;

/* Variables and functions */
 int CTL_FLAG_FROM_OTHER_SC ; 
 int /*<<< orphan*/  CTL_HA_CHAN_CTL ; 
 int /*<<< orphan*/  CTL_MSG_MANAGE_TASKS ; 
 struct ctl_softc* FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  CTL_TASK_FUNCTION_COMPLETE ; 
 int /*<<< orphan*/  CTL_TASK_LUN_DOES_NOT_EXIST ; 
 int /*<<< orphan*/  CTL_TASK_LUN_RESET ; 
 int /*<<< orphan*/  CTL_UA_LUN_RESET ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union ctl_ha_msg*,int,int /*<<< orphan*/ ) ; 
 size_t ctl_max_luns ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(union ctl_io *io)
{
	struct ctl_softc *softc = FUNC0(io);
	struct ctl_lun *lun;
	uint32_t targ_lun, initidx;

	targ_lun = io->io_hdr.nexus.targ_mapped_lun;
	initidx = FUNC2(&io->io_hdr.nexus);
	FUNC4(&softc->ctl_lock);
	if (targ_lun >= ctl_max_luns ||
	    (lun = softc->ctl_luns[targ_lun]) == NULL) {
		FUNC5(&softc->ctl_lock);
		io->taskio.task_status = CTL_TASK_LUN_DOES_NOT_EXIST;
		return (1);
	}
	FUNC1(lun, initidx, CTL_UA_LUN_RESET);
	FUNC5(&softc->ctl_lock);
	io->taskio.task_status = CTL_TASK_FUNCTION_COMPLETE;

	if ((io->io_hdr.flags & CTL_FLAG_FROM_OTHER_SC) == 0) {
		union ctl_ha_msg msg_info;

		msg_info.hdr.msg_type = CTL_MSG_MANAGE_TASKS;
		msg_info.hdr.nexus = io->io_hdr.nexus;
		msg_info.task.task_action = CTL_TASK_LUN_RESET;
		msg_info.hdr.original_sc = NULL;
		msg_info.hdr.serializing_sc = NULL;
		FUNC3(CTL_HA_CHAN_CTL, &msg_info,
		    sizeof(msg_info.task), M_WAITOK);
	}
	return (0);
}