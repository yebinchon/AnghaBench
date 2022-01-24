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
struct TYPE_3__ {int /*<<< orphan*/ * ctl_private; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
typedef  int uint64_t ;
struct scsi_unmap_desc {int /*<<< orphan*/  lba; int /*<<< orphan*/  length; } ;
struct ctl_ptr_len_flags {int len; scalar_t__ ptr; } ;
struct TYPE_4__ {int blocksize; } ;
struct ctl_be_block_lun {TYPE_2__ cbe_lun; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  disk_stats; } ;
struct ctl_be_block_io {int io_offset; int io_len; int /*<<< orphan*/  ds_t0; union ctl_io* io; } ;

/* Variables and functions */
 size_t CTL_PRIV_LBA_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_be_block_lun*,struct ctl_be_block_io*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ctl_be_block_lun *be_lun,
		       struct ctl_be_block_io *beio)
{
	union ctl_io *io;
	struct ctl_ptr_len_flags *ptrlen;
	struct scsi_unmap_desc *buf, *end;
	uint64_t len;

	io = beio->io;

	FUNC0("entered\n");

	FUNC1(&beio->ds_t0);
	FUNC4(&be_lun->io_lock);
	FUNC3(be_lun->disk_stats, &beio->ds_t0);
	FUNC5(&be_lun->io_lock);

	if (beio->io_offset == -1) {
		beio->io_len = 0;
		ptrlen = (struct ctl_ptr_len_flags *)&io->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
		buf = (struct scsi_unmap_desc *)ptrlen->ptr;
		end = buf + ptrlen->len / sizeof(*buf);
		for (; buf < end; buf++) {
			len = (uint64_t)FUNC6(buf->length) *
			    be_lun->cbe_lun.blocksize;
			beio->io_len += len;
			FUNC2(be_lun, beio,
			    FUNC7(buf->lba) * be_lun->cbe_lun.blocksize,
			    len, (end - buf < 2) ? TRUE : FALSE);
		}
	} else
		FUNC2(be_lun, beio,
		    beio->io_offset, beio->io_len, TRUE);
}