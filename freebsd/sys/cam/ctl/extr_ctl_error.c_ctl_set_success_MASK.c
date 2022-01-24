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
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; scalar_t__ sense_len; int /*<<< orphan*/  scsi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_SUCCESS ; 
 int /*<<< orphan*/  SCSI_STATUS_OK ; 

void
FUNC0(struct ctl_scsiio *ctsio)
{

	ctsio->scsi_status = SCSI_STATUS_OK;
	ctsio->sense_len = 0;
	ctsio->io_hdr.status = CTL_SUCCESS;
}