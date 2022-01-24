#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dma_start_bt; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int kern_data_len; scalar_t__ kern_sg_entries; int /*<<< orphan*/  kern_data_ptr; int /*<<< orphan*/  be_move_done; } ;
union ctl_io {TYPE_2__ io_hdr; TYPE_1__ scsiio; } ;
typedef  int u_int ;
struct ctl_be_lun {int blocksize; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_7__ {int len; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (union ctl_io*) ; 
 struct ctl_be_lun* FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  M_RAMDISK ; 
 int /*<<< orphan*/  M_WAITOK ; 
 TYPE_3__* FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  ctl_backend_ramdisk_move_done ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(union ctl_io *io)
{
	struct ctl_be_lun *cbe_lun = FUNC1(io);
	u_int lbas, len;

	lbas = FUNC0(io)->len - FUNC3(io)->len;
	lbas = FUNC2(lbas, 131072 / cbe_lun->blocksize);
	len = lbas * cbe_lun->blocksize;

	io->scsiio.be_move_done = ctl_backend_ramdisk_move_done;
	io->scsiio.kern_data_ptr = FUNC6(len, M_RAMDISK, M_WAITOK);
	io->scsiio.kern_data_len = len;
	io->scsiio.kern_sg_entries = 0;
	io->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	FUNC3(io)->len += lbas;
#ifdef CTL_TIME_IO
	getbinuptime(&io->io_hdr.dma_start_bt);
#endif
	FUNC4(io);
}