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
struct TYPE_4__ {scalar_t__ kern_data_ptr; } ;
union ctl_io {TYPE_1__ scsiio; } ;
struct scsi_get_lba_status_data {TYPE_3__* descr; } ;
struct ctl_lba_len_flags {scalar_t__ lba; } ;
struct TYPE_5__ {int blocksize; } ;
struct ctl_be_block_lun {int size_bytes; TYPE_2__ cbe_lun; int /*<<< orphan*/  vn; } ;
struct ctl_be_block_io {union ctl_io* io; } ;
struct cdevsw {int (* d_ioctl ) (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct cdev {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {int status; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 struct ctl_lba_len_flags* FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FIOSEEKDATA ; 
 int /*<<< orphan*/  FIOSEEKHOLE ; 
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_be_block_io*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*,int) ; 
 struct cdevsw* FUNC5 (int /*<<< orphan*/ ,struct cdev**,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct ctl_be_block_lun *be_lun,
			struct ctl_be_block_io *beio)
{
	union ctl_io *io = beio->io;
	struct cdevsw *csw;
	struct cdev *dev;
	struct ctl_lba_len_flags *lbalen = FUNC0(io);
	struct scsi_get_lba_status_data *data;
	off_t roff, off;
	int error, ref, status;

	FUNC1("entered\n");

	csw = FUNC5(be_lun->vn, &dev, &ref);
	if (csw == NULL) {
		status = 0;	/* unknown up to the end */
		off = be_lun->size_bytes;
		goto done;
	}
	off = roff = ((off_t)lbalen->lba) * be_lun->cbe_lun.blocksize;
	error = csw->d_ioctl(dev, FIOSEEKHOLE, (caddr_t)&off, FREAD,
	    curthread);
	if (error == 0 && off > roff)
		status = 0;	/* mapped up to off */
	else {
		error = csw->d_ioctl(dev, FIOSEEKDATA, (caddr_t)&off, FREAD,
		    curthread);
		if (error == 0 && off > roff)
			status = 1;	/* deallocated up to off */
		else {
			status = 0;	/* unknown up to the end */
			off = be_lun->size_bytes;
		}
	}
	FUNC4(dev, ref);

done:
	data = (struct scsi_get_lba_status_data *)io->scsiio.kern_data_ptr;
	FUNC6(lbalen->lba, data->descr[0].addr);
	FUNC7(FUNC2(UINT32_MAX, off / be_lun->cbe_lun.blocksize -
	    lbalen->lba), data->descr[0].length);
	data->descr[0].status = status;

	FUNC3(beio);
}