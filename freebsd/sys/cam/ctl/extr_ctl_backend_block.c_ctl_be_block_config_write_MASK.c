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
union ctl_io {TYPE_1__ scsiio; int /*<<< orphan*/  io_hdr; } ;
struct scsi_start_stop_unit {int how; } ;
struct ctl_lun_req {int dummy; } ;
struct ctl_be_lun {int /*<<< orphan*/  flags; scalar_t__ be_lun; } ;
struct ctl_be_block_lun {int /*<<< orphan*/ * vn; int /*<<< orphan*/  io_task; int /*<<< orphan*/  io_taskqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  config_write_queue; } ;

/* Variables and functions */
 struct ctl_be_lun* FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  CTL_LUN_FLAG_EJECTED ; 
 int /*<<< orphan*/  CTL_LUN_FLAG_NO_MEDIA ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  PREVENT_ALLOW 134 
 int SSS_LOEJ ; 
 int SSS_PC_MASK ; 
 int SSS_START ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  START_STOP_UNIT 133 
#define  SYNCHRONIZE_CACHE 132 
#define  SYNCHRONIZE_CACHE_16 131 
#define  UNMAP 130 
#define  WRITE_SAME_10 129 
#define  WRITE_SAME_16 128 
 int /*<<< orphan*/  FUNC3 (struct ctl_be_block_lun*) ; 
 int FUNC4 (struct ctl_be_block_lun*,struct ctl_lun_req*) ; 
 int /*<<< orphan*/  FUNC5 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  FUNC8 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  FUNC12 (struct ctl_be_lun*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(union ctl_io *io)
{
	struct ctl_be_block_lun *be_lun;
	struct ctl_be_lun *cbe_lun;
	int retval;

	FUNC1("entered\n");

	cbe_lun = FUNC0(io);
	be_lun = (struct ctl_be_block_lun *)cbe_lun->be_lun;

	retval = 0;
	switch (io->scsiio.cdb[0]) {
	case SYNCHRONIZE_CACHE:
	case SYNCHRONIZE_CACHE_16:
	case WRITE_SAME_10:
	case WRITE_SAME_16:
	case UNMAP:
		/*
		 * The upper level CTL code will filter out any CDBs with
		 * the immediate bit set and return the proper error.
		 *
		 * We don't really need to worry about what LBA range the
		 * user asked to be synced out.  When they issue a sync
		 * cache command, we'll sync out the whole thing.
		 */
		FUNC13(&be_lun->queue_lock);
		FUNC2(&be_lun->config_write_queue, &io->io_hdr,
				   links);
		FUNC14(&be_lun->queue_lock);
		FUNC15(be_lun->io_taskqueue, &be_lun->io_task);
		break;
	case START_STOP_UNIT: {
		struct scsi_start_stop_unit *cdb;
		struct ctl_lun_req req;

		cdb = (struct scsi_start_stop_unit *)io->scsiio.cdb;
		if ((cdb->how & SSS_PC_MASK) != 0) {
			FUNC10(&io->scsiio);
			FUNC5(io);
			break;
		}
		if (cdb->how & SSS_START) {
			if ((cdb->how & SSS_LOEJ) && be_lun->vn == NULL) {
				retval = FUNC4(be_lun, &req);
				cbe_lun->flags &= ~CTL_LUN_FLAG_EJECTED;
				if (retval == 0) {
					cbe_lun->flags &= ~CTL_LUN_FLAG_NO_MEDIA;
					FUNC7(cbe_lun);
				} else {
					cbe_lun->flags |= CTL_LUN_FLAG_NO_MEDIA;
					FUNC8(cbe_lun);
				}
			}
			FUNC11(cbe_lun);
		} else {
			FUNC12(cbe_lun);
			if (cdb->how & SSS_LOEJ) {
				cbe_lun->flags |= CTL_LUN_FLAG_NO_MEDIA;
				cbe_lun->flags |= CTL_LUN_FLAG_EJECTED;
				FUNC6(cbe_lun);
				if (be_lun->vn != NULL)
					FUNC3(be_lun);
			}
		}

		FUNC10(&io->scsiio);
		FUNC5(io);
		break;
	}
	case PREVENT_ALLOW:
		FUNC10(&io->scsiio);
		FUNC5(io);
		break;
	default:
		FUNC9(&io->scsiio);
		FUNC5(io);
		retval = CTL_RETVAL_COMPLETE;
		break;
	}

	return (retval);
}