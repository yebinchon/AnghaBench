#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_prevent {int how; } ;
struct TYPE_3__ {int /*<<< orphan*/  nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; scalar_t__ cdb; } ;
struct ctl_lun {int flags; TYPE_2__* backend; int /*<<< orphan*/  lun_lock; int /*<<< orphan*/  prevent_count; int /*<<< orphan*/ * prevent; } ;
struct TYPE_4__ {int (* config_write ) (union ctl_io*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 int CTL_LUN_REMOVABLE ; 
 int CTL_RETVAL_COMPLETE ; 
 int PR_PREVENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (union ctl_io*) ; 

int
FUNC11(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	struct scsi_prevent *cdb;
	int retval;
	uint32_t initidx;

	FUNC0(("ctl_prevent_allow\n"));

	cdb = (struct scsi_prevent *)ctsio->cdb;

	if ((lun->flags & CTL_LUN_REMOVABLE) == 0 || lun->prevent == NULL) {
		FUNC6(ctsio);
		FUNC3((union ctl_io *)ctsio);
		return (CTL_RETVAL_COMPLETE);
	}

	initidx = FUNC4(&ctsio->io_hdr.nexus);
	FUNC8(&lun->lun_lock);
	if ((cdb->how & PR_PREVENT) &&
	    FUNC5(lun->prevent, initidx) == 0) {
		FUNC7(lun->prevent, initidx);
		lun->prevent_count++;
	} else if ((cdb->how & PR_PREVENT) == 0 &&
	    FUNC5(lun->prevent, initidx)) {
		FUNC2(lun->prevent, initidx);
		lun->prevent_count--;
	}
	FUNC9(&lun->lun_lock);
	retval = lun->backend->config_write((union ctl_io *)ctsio);
	return (retval);
}