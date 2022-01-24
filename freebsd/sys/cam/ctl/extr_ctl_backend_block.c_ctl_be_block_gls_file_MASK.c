#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ kern_data_ptr; } ;
union ctl_io {TYPE_1__ scsiio; } ;
struct scsi_get_lba_status_data {TYPE_3__* descr; } ;
struct ctl_lba_len_flags {scalar_t__ lba; } ;
struct TYPE_7__ {int blocksize; } ;
struct ctl_be_block_lun {int size_bytes; TYPE_2__ cbe_lun; int /*<<< orphan*/  vn; } ;
struct ctl_be_block_io {union ctl_io* io; } ;
typedef  int off_t ;
struct TYPE_9__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_8__ {int status; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 struct ctl_lba_len_flags* FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FIOSEEKDATA ; 
 int /*<<< orphan*/  FIOSEEKHOLE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_be_block_io*) ; 
 TYPE_4__* curthread ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct ctl_be_block_lun *be_lun,
			struct ctl_be_block_io *beio)
{
	union ctl_io *io = beio->io;
	struct ctl_lba_len_flags *lbalen = FUNC0(io);
	struct scsi_get_lba_status_data *data;
	off_t roff, off;
	int error, status;

	FUNC1("entered\n");

	off = roff = ((off_t)lbalen->lba) * be_lun->cbe_lun.blocksize;
	FUNC8(be_lun->vn, LK_SHARED | LK_RETRY);
	error = FUNC3(be_lun->vn, FIOSEEKHOLE, &off,
	    0, curthread->td_ucred, curthread);
	if (error == 0 && off > roff)
		status = 0;	/* mapped up to off */
	else {
		error = FUNC3(be_lun->vn, FIOSEEKDATA, &off,
		    0, curthread->td_ucred, curthread);
		if (error == 0 && off > roff)
			status = 1;	/* deallocated up to off */
		else {
			status = 0;	/* unknown up to the end */
			off = be_lun->size_bytes;
		}
	}
	FUNC4(be_lun->vn, 0);

	data = (struct scsi_get_lba_status_data *)io->scsiio.kern_data_ptr;
	FUNC6(lbalen->lba, data->descr[0].addr);
	FUNC7(FUNC2(UINT32_MAX, off / be_lun->cbe_lun.blocksize -
	    lbalen->lba), data->descr[0].length);
	data->descr[0].status = status;

	FUNC5(beio);
}