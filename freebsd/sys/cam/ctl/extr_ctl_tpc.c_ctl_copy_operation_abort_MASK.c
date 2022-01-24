#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  int /*<<< orphan*/  uint32_t ;
struct tpc_list {int abort; } ;
struct scsi_copy_operation_abort {int /*<<< orphan*/  list_identifier; } ;
struct TYPE_2__ {int /*<<< orphan*/  nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; scalar_t__ cdb; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_scsiio*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct tpc_list* FUNC9 (struct ctl_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	struct scsi_copy_operation_abort *cdb;
	struct tpc_list *list;
	int retval;
	uint32_t list_id;

	FUNC0(("ctl_copy_operation_abort\n"));

	cdb = (struct scsi_copy_operation_abort *)ctsio->cdb;
	retval = CTL_RETVAL_COMPLETE;

	list_id = FUNC8(cdb->list_identifier);
	FUNC6(&lun->lun_lock);
	list = FUNC9(lun, list_id,
	    FUNC3(&ctsio->io_hdr.nexus));
	if (list == NULL) {
		FUNC7(&lun->lun_lock);
		FUNC4(ctsio, /*sks_valid*/ 1,
		    /*command*/ 1, /*field*/ 2, /*bit_valid*/ 0,
		    /*bit*/ 0);
		FUNC2((union ctl_io *)ctsio);
		return (retval);
	}
	list->abort = 1;
	FUNC7(&lun->lun_lock);

	FUNC5(ctsio);
	FUNC2((union ctl_io *)ctsio);
	return (retval);
}