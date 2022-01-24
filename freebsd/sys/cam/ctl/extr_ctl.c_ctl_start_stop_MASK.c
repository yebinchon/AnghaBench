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
typedef  scalar_t__ uint32_t ;
struct scsi_start_stop_unit {int how; } ;
struct TYPE_3__ {int /*<<< orphan*/  nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; scalar_t__ cdb; } ;
struct ctl_lun {int flags; scalar_t__ pr_res_idx; int pr_res_type; scalar_t__ prevent_count; TYPE_2__* backend; } ;
struct TYPE_4__ {int (* config_write ) (union ctl_io*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 int CTL_LUN_NO_MEDIA ; 
 int CTL_LUN_PR_RESERVED ; 
 int CTL_LUN_REMOVABLE ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  SSD_ELEM_NONE ; 
 int /*<<< orphan*/  SSD_KEY_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SSD_KEY_NOT_READY ; 
 int SSS_LOEJ ; 
 int SSS_PC_MASK ; 
 int SSS_START ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ctl_lun*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_scsiio*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_scsiio*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (union ctl_io*) ; 

int
FUNC9(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC1(ctsio);
	struct scsi_start_stop_unit *cdb;
	int retval;

	FUNC0(("ctl_start_stop\n"));

	cdb = (struct scsi_start_stop_unit *)ctsio->cdb;

	if ((cdb->how & SSS_PC_MASK) == 0) {
		if ((lun->flags & CTL_LUN_PR_RESERVED) &&
		    (cdb->how & SSS_START) == 0) {
			uint32_t residx;

			residx = FUNC3(&ctsio->io_hdr.nexus);
			if (FUNC4(lun, residx) == 0 ||
			    (lun->pr_res_idx != residx && lun->pr_res_type < 4)) {

				FUNC6(ctsio);
				FUNC2((union ctl_io *)ctsio);
				return (CTL_RETVAL_COMPLETE);
			}
		}

		if ((cdb->how & SSS_LOEJ) &&
		    (lun->flags & CTL_LUN_REMOVABLE) == 0) {
			FUNC5(ctsio,
					      /*sks_valid*/ 1,
					      /*command*/ 1,
					      /*field*/ 4,
					      /*bit_valid*/ 1,
					      /*bit*/ 1);
			FUNC2((union ctl_io *)ctsio);
			return (CTL_RETVAL_COMPLETE);
		}

		if ((cdb->how & SSS_START) == 0 && (cdb->how & SSS_LOEJ) &&
		    lun->prevent_count > 0) {
			/* "Medium removal prevented" */
			FUNC7(ctsio, /*current_error*/ 1,
			    /*sense_key*/(lun->flags & CTL_LUN_NO_MEDIA) ?
			     SSD_KEY_NOT_READY : SSD_KEY_ILLEGAL_REQUEST,
			    /*asc*/ 0x53, /*ascq*/ 0x02, SSD_ELEM_NONE);
			FUNC2((union ctl_io *)ctsio);
			return (CTL_RETVAL_COMPLETE);
		}
	}

	retval = lun->backend->config_write((union ctl_io *)ctsio);
	return (retval);
}