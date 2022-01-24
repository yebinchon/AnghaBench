#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; } ;
struct scsi_start_stop_unit {int how; } ;
struct ctl_be_lun {int dummy; } ;

/* Variables and functions */
 struct ctl_be_lun* FUNC0 (union ctl_io*) ; 
 int CTL_RETVAL_COMPLETE ; 
#define  PREVENT_ALLOW 134 
 int SSS_LOEJ ; 
 int SSS_PC_MASK ; 
 int SSS_START ; 
#define  START_STOP_UNIT 133 
#define  SYNCHRONIZE_CACHE 132 
#define  SYNCHRONIZE_CACHE_16 131 
#define  UNMAP 130 
#define  WRITE_SAME_10 129 
#define  WRITE_SAME_16 128 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  FUNC9 (struct ctl_be_lun*) ; 

__attribute__((used)) static int
FUNC10(union ctl_io *io)
{
	struct ctl_be_lun *cbe_lun = FUNC0(io);
	int retval = 0;

	switch (io->scsiio.cdb[0]) {
	case SYNCHRONIZE_CACHE:
	case SYNCHRONIZE_CACHE_16:
		/* We have no cache to flush. */
		FUNC7(&io->scsiio);
		FUNC3(io);
		break;
	case START_STOP_UNIT: {
		struct scsi_start_stop_unit *cdb;

		cdb = (struct scsi_start_stop_unit *)io->scsiio.cdb;
		if ((cdb->how & SSS_PC_MASK) != 0) {
			FUNC7(&io->scsiio);
			FUNC3(io);
			break;
		}
		if (cdb->how & SSS_START) {
			if (cdb->how & SSS_LOEJ)
				FUNC5(cbe_lun);
			FUNC8(cbe_lun);
		} else {
			FUNC9(cbe_lun);
			if (cdb->how & SSS_LOEJ)
				FUNC4(cbe_lun);
		}
		FUNC7(&io->scsiio);
		FUNC3(io);
		break;
	}
	case PREVENT_ALLOW:
		FUNC7(&io->scsiio);
		FUNC3(io);
		break;
	case WRITE_SAME_10:
	case WRITE_SAME_16:
		FUNC2(io);
		break;
	case UNMAP:
		FUNC1(io);
		break;
	default:
		FUNC6(&io->scsiio);
		FUNC3(io);
		retval = CTL_RETVAL_COMPLETE;
		break;
	}

	return (retval);
}