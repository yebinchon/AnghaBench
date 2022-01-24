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
struct TYPE_3__ {int /*<<< orphan*/  dma_start_bt; } ;
union ctl_io {TYPE_1__ io_hdr; int /*<<< orphan*/  scsiio; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  disk_stats; } ;
struct ctl_be_block_io {int first_error; scalar_t__ first_error_offset; scalar_t__ num_bios_done; scalar_t__ send_complete; scalar_t__ num_bios_sent; scalar_t__ bio_cmd; int /*<<< orphan*/ * beio_cont; int /*<<< orphan*/  ds_t0; int /*<<< orphan*/  ds_trans_type; int /*<<< orphan*/  ds_tag_type; int /*<<< orphan*/  io_len; struct ctl_be_block_lun* lun; union ctl_io* io; } ;
struct bio {int bio_error; scalar_t__ bio_offset; struct ctl_be_block_io* bio_caller1; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (union ctl_io*) ; 
 scalar_t__ BIO_DELETE ; 
 scalar_t__ BIO_FLUSH ; 
 scalar_t__ BIO_READ ; 
 scalar_t__ BIO_WRITE ; 
 int CTL_LLF_READ ; 
 int CTL_LLF_VERIFY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EACCES ; 
 int EDQUOT ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_be_block_io*) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(struct bio *bio)
{
	struct ctl_be_block_io *beio;
	struct ctl_be_block_lun *be_lun;
	union ctl_io *io;
	int error;

	beio = bio->bio_caller1;
	be_lun = beio->lun;
	io = beio->io;

	FUNC1("entered\n");

	error = bio->bio_error;
	FUNC14(&be_lun->io_lock);
	if (error != 0 &&
	    (beio->first_error == 0 ||
	     bio->bio_offset < beio->first_error_offset)) {
		beio->first_error = error;
		beio->first_error_offset = bio->bio_offset;
	}

	beio->num_bios_done++;

	/*
	 * XXX KDM will this cause WITNESS to complain?  Holding a lock
	 * during the free might cause it to complain.
	 */
	FUNC12(bio);

	/*
	 * If the send complete bit isn't set, or we aren't the last I/O to
	 * complete, then we're done.
	 */
	if ((beio->send_complete == 0)
	 || (beio->num_bios_done < beio->num_bios_sent)) {
		FUNC15(&be_lun->io_lock);
		return;
	}

	/*
	 * At this point, we've verified that we are the last I/O to
	 * complete, so it's safe to drop the lock.
	 */
	FUNC11(beio->lun->disk_stats, beio->io_len,
	    beio->ds_tag_type, beio->ds_trans_type,
	    /*now*/ NULL, /*then*/&beio->ds_t0);
	FUNC15(&be_lun->io_lock);

	/*
	 * If there are any errors from the backing device, we fail the
	 * entire I/O with a medium error.
	 */
	error = beio->first_error;
	if (error != 0) {
		if (error == EOPNOTSUPP) {
			FUNC7(&io->scsiio);
		} else if (error == ENOSPC || error == EDQUOT) {
			FUNC9(&io->scsiio);
		} else if (error == EROFS || error == EACCES) {
			FUNC5(&io->scsiio);
		} else if (beio->bio_cmd == BIO_FLUSH) {
			/* XXX KDM is there is a better error here? */
			FUNC6(&io->scsiio,
						 /*sks_valid*/ 1,
						 /*retry_count*/ 0xbad2);
		} else {
			FUNC8(&io->scsiio,
			    beio->bio_cmd == BIO_READ);
		}
		FUNC2(beio);
		return;
	}

	/*
	 * If this is a write, a flush, a delete or verify, we're all done.
	 * If this is a read, we can now send the data to the user.
	 */
	if ((beio->bio_cmd == BIO_WRITE)
	 || (beio->bio_cmd == BIO_FLUSH)
	 || (beio->bio_cmd == BIO_DELETE)
	 || (FUNC0(io)->flags & CTL_LLF_VERIFY)) {
		FUNC10(&io->scsiio);
		FUNC2(beio);
	} else {
		if ((FUNC0(io)->flags & CTL_LLF_READ) &&
		    beio->beio_cont == NULL) {
			FUNC10(&io->scsiio);
			FUNC4(io);
		}
#ifdef CTL_TIME_IO
		getbinuptime(&io->io_hdr.dma_start_bt);
#endif
		FUNC3(io);
	}
}