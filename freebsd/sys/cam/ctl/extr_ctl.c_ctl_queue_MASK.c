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
struct TYPE_4__ {int /*<<< orphan*/  targ_lun; int /*<<< orphan*/  targ_mapped_lun; } ;
struct TYPE_5__ {int io_type; TYPE_1__ nexus; int /*<<< orphan*/  start_bt; int /*<<< orphan*/  start_time; } ;
struct TYPE_6__ {int /*<<< orphan*/ * cdb; } ;
union ctl_io {TYPE_2__ io_hdr; TYPE_3__ scsiio; } ;
struct ctl_port {int dummy; } ;

/* Variables and functions */
 int CTL_DEBUG_CDB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  CTL_IO_SCSI 129 
#define  CTL_IO_TASK 128 
 struct ctl_port* FUNC1 (union ctl_io*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int EINVAL ; 
 int ctl_debug ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  time_uptime ; 

int
FUNC7(union ctl_io *io)
{
	struct ctl_port *port = FUNC1(io);

	FUNC0(("ctl_queue cdb[0]=%02X\n", io->scsiio.cdb[0]));

#ifdef CTL_TIME_IO
	io->io_hdr.start_time = time_uptime;
	getbinuptime(&io->io_hdr.start_bt);
#endif /* CTL_TIME_IO */

	/* Map FE-specific LUN ID into global one. */
	io->io_hdr.nexus.targ_mapped_lun =
	    FUNC4(port, io->io_hdr.nexus.targ_lun);

	switch (io->io_hdr.io_type) {
	case CTL_IO_SCSI:
	case CTL_IO_TASK:
		if (ctl_debug & CTL_DEBUG_CDB)
			FUNC3(io);
		FUNC2(io);
		break;
	default:
		FUNC6("ctl_queue: unknown I/O type %d\n", io->io_hdr.io_type);
		return (EINVAL);
	}

	return (CTL_RETVAL_COMPLETE);
}