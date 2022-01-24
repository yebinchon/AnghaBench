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
struct TYPE_3__ {int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; } ;
struct ctl_be_block_softc {int dummy; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  (* get_lba_status ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;struct ctl_be_block_softc* softc; } ;
struct ctl_be_block_io {int bio_cmd; int /*<<< orphan*/  io_len; int /*<<< orphan*/  ds_tag_type; int /*<<< orphan*/  ds_trans_type; int /*<<< orphan*/  (* beio_cont ) (struct ctl_be_block_io*) ;struct ctl_be_block_lun* lun; union ctl_io* io; } ;
struct TYPE_4__ {void* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVSTAT_NO_DATA ; 
 int /*<<< orphan*/  DEVSTAT_TAG_ORDERED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (union ctl_io*) ; 
#define  SERVICE_ACTION_IN 128 
 struct ctl_be_block_io* FUNC2 (struct ctl_be_block_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_be_block_io*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ; 

__attribute__((used)) static void
FUNC6(struct ctl_be_block_lun *be_lun,
			 union ctl_io *io)
{
	struct ctl_be_block_io *beio;
	struct ctl_be_block_softc *softc;

	FUNC0("entered\n");

	softc = be_lun->softc;
	beio = FUNC2(softc);
	beio->io = io;
	beio->lun = be_lun;
	beio->beio_cont = ctl_be_block_cr_done;
	FUNC1(io)->ptr = (void *)beio;

	switch (io->scsiio.cdb[0]) {
	case SERVICE_ACTION_IN:		/* GET LBA STATUS */
		beio->bio_cmd = -1;
		beio->ds_trans_type = DEVSTAT_NO_DATA;
		beio->ds_tag_type = DEVSTAT_TAG_ORDERED;
		beio->io_len = 0;
		if (be_lun->get_lba_status)
			be_lun->get_lba_status(be_lun, beio);
		else
			FUNC3(beio);
		break;
	default:
		FUNC4("Unhandled CDB type %#x", io->scsiio.cdb[0]);
		break;
	}
}