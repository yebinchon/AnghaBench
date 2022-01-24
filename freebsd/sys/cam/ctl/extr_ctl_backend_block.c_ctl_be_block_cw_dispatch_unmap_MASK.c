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
union ctl_io {int /*<<< orphan*/  scsiio; TYPE_1__ io_hdr; } ;
struct ctl_ptr_len_flags {int flags; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  (* unmap ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;} ;
struct ctl_be_block_io {int io_offset; int /*<<< orphan*/  ds_trans_type; int /*<<< orphan*/  bio_cmd; scalar_t__ io_len; } ;
struct TYPE_4__ {scalar_t__ ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_DELETE ; 
 size_t CTL_PRIV_LBA_LEN ; 
 int /*<<< orphan*/  DEVSTAT_FREE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (union ctl_io*) ; 
 int SU_ANCHOR ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_be_block_io*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ; 

__attribute__((used)) static void
FUNC6(struct ctl_be_block_lun *be_lun,
			    union ctl_io *io)
{
	struct ctl_be_block_io *beio;
	struct ctl_ptr_len_flags *ptrlen;

	FUNC0("entered\n");

	beio = (struct ctl_be_block_io *)FUNC1(io)->ptr;
	ptrlen = (struct ctl_ptr_len_flags *)&io->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];

	if ((ptrlen->flags & ~SU_ANCHOR) != 0 || be_lun->unmap == NULL) {
		FUNC3(beio);
		FUNC4(&io->scsiio,
				      /*sks_valid*/ 0,
				      /*command*/ 1,
				      /*field*/ 0,
				      /*bit_valid*/ 0,
				      /*bit*/ 0);
		FUNC2(io);
		return;
	}

	beio->io_len = 0;
	beio->io_offset = -1;
	beio->bio_cmd = BIO_DELETE;
	beio->ds_trans_type = DEVSTAT_FREE;
	FUNC0("UNMAP\n");
	be_lun->unmap(be_lun, beio);
}