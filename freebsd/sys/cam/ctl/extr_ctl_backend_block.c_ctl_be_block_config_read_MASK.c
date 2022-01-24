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
struct ctl_be_lun {scalar_t__ be_lun; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  io_task; int /*<<< orphan*/  io_taskqueue; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  config_read_queue; } ;

/* Variables and functions */
 struct ctl_be_lun* FUNC0 (union ctl_io*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int CTL_RETVAL_QUEUED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  SERVICE_ACTION_IN 128 
 int SGLS_SERVICE_ACTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(union ctl_io *io)
{
	struct ctl_be_block_lun *be_lun;
	struct ctl_be_lun *cbe_lun;
	int retval = 0;

	FUNC1("entered\n");

	cbe_lun = FUNC0(io);
	be_lun = (struct ctl_be_block_lun *)cbe_lun->be_lun;

	switch (io->scsiio.cdb[0]) {
	case SERVICE_ACTION_IN:
		if (io->scsiio.cdb[1] == SGLS_SERVICE_ACTION) {
			FUNC6(&be_lun->queue_lock);
			FUNC2(&be_lun->config_read_queue,
			    &io->io_hdr, links);
			FUNC7(&be_lun->queue_lock);
			FUNC8(be_lun->io_taskqueue,
			    &be_lun->io_task);
			retval = CTL_RETVAL_QUEUED;
			break;
		}
		FUNC4(&io->scsiio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ 1,
				      /*bit_valid*/ 1,
				      /*bit*/ 4);
		FUNC3(io);
		retval = CTL_RETVAL_COMPLETE;
		break;
	default:
		FUNC5(&io->scsiio);
		FUNC3(io);
		retval = CTL_RETVAL_COMPLETE;
		break;
	}

	return (retval);
}