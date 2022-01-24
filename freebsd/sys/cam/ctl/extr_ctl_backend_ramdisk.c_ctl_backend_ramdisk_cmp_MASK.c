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
struct TYPE_4__ {int kern_data_len; int kern_data_ptr; int kern_rel_offset; } ;
union ctl_io {TYPE_1__ scsiio; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int u_int ;
struct ctl_be_ramdisk_lun {int dummy; } ;
struct ctl_be_lun {int blocksize; int pblockexp; struct ctl_be_ramdisk_lun* be_lun; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_6__ {int lba; } ;
struct TYPE_5__ {int len; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (union ctl_io*) ; 
 struct ctl_be_lun* FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  GP_READ ; 
 TYPE_2__* FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  SSD_ELEM_INFO ; 
 int /*<<< orphan*/  SSD_ELEM_NONE ; 
 int /*<<< orphan*/  SSD_KEY_MISCOMPARE ; 
 int UINT_MAX ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct ctl_be_ramdisk_lun*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(union ctl_io *io)
{
	struct ctl_be_lun *cbe_lun = FUNC1(io);
	struct ctl_be_ramdisk_lun *be_lun = cbe_lun->be_lun;
	uint8_t *page;
	uint8_t info[8];
	uint64_t lba;
	u_int lbaoff, lbas, res, off;

	lbas = io->scsiio.kern_data_len / cbe_lun->blocksize;
	lba = FUNC0(io)->lba + FUNC2(io)->len - lbas;
	off = 0;
	for (; lbas > 0; lbas--, lba++) {
		page = FUNC4(be_lun,
		    lba >> cbe_lun->pblockexp, GP_READ);
		lbaoff = lba & ~(UINT_MAX << cbe_lun->pblockexp);
		page += lbaoff * cbe_lun->blocksize;
		res = FUNC3(io->scsiio.kern_data_ptr + off, page,
		    cbe_lun->blocksize);
		off += res;
		if (res < cbe_lun->blocksize)
			break;
	}
	if (lbas > 0) {
		off += io->scsiio.kern_rel_offset - io->scsiio.kern_data_len;
		FUNC6(off, info);
		FUNC5(&io->scsiio, /*current_error*/ 1,
		    /*sense_key*/ SSD_KEY_MISCOMPARE,
		    /*asc*/ 0x1D, /*ascq*/ 0x00,
		    /*type*/ SSD_ELEM_INFO,
		    /*size*/ sizeof(info), /*data*/ &info,
		    /*type*/ SSD_ELEM_NONE);
		return (1);
	}
	return (0);
}