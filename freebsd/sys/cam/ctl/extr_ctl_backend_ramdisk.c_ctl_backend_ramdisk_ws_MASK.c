#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kern_data_ptr; } ;
union ctl_io {TYPE_1__ scsiio; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_int ;
struct ctl_lba_len_flags {int flags; scalar_t__ lba; scalar_t__ len; } ;
struct ctl_be_ramdisk_lun {int dummy; } ;
struct ctl_be_lun {scalar_t__ pblockexp; scalar_t__ blocksize; struct ctl_be_ramdisk_lun* be_lun; } ;

/* Variables and functions */
 struct ctl_lba_len_flags* FUNC0 (union ctl_io*) ; 
 struct ctl_be_lun* FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  GP_WRITE ; 
 int /*<<< orphan*/ * P_ANCHORED ; 
 int /*<<< orphan*/ * P_UNMAPPED ; 
 int SWS_ANCHOR ; 
 int SWS_LBDATA ; 
 int SWS_NDOB ; 
 int SWS_UNMAP ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_be_lun*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct ctl_be_ramdisk_lun*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(union ctl_io *io)
{
	struct ctl_be_lun *cbe_lun = FUNC1(io);
	struct ctl_be_ramdisk_lun *be_lun = cbe_lun->be_lun;
	struct ctl_lba_len_flags *lbalen = FUNC0(io);
	uint8_t *page;
	uint64_t lba;
	u_int lbaoff, lbas;

	if (lbalen->flags & ~(SWS_LBDATA | SWS_UNMAP | SWS_ANCHOR | SWS_NDOB)) {
		FUNC6(&io->scsiio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ 1,
				      /*bit_valid*/ 0,
				      /*bit*/ 0);
		FUNC4(io);
		return;
	}
	if (lbalen->flags & SWS_UNMAP) {
		FUNC2(cbe_lun, lbalen->lba, lbalen->len,
		    (lbalen->flags & SWS_ANCHOR) != 0);
		FUNC8(&io->scsiio);
		FUNC4(io);
		return;
	}

	for (lba = lbalen->lba, lbas = lbalen->len; lbas > 0; lba++, lbas--) {
		page = FUNC3(be_lun,
		    lba >> cbe_lun->pblockexp, GP_WRITE);
		if (page == P_UNMAPPED || page == P_ANCHORED) {
			FUNC7(&io->scsiio);
			FUNC5(io);
			return;
		}
		lbaoff = lba & ~(UINT_MAX << cbe_lun->pblockexp);
		page += lbaoff * cbe_lun->blocksize;
		if (lbalen->flags & SWS_NDOB) {
			FUNC10(page, 0, cbe_lun->blocksize);
		} else {
			FUNC9(page, io->scsiio.kern_data_ptr,
			    cbe_lun->blocksize);
		}
		if (lbalen->flags & SWS_LBDATA)
			FUNC11(lba, page);
	}
	FUNC8(&io->scsiio);
	FUNC4(io);
}