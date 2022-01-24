#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ctl_be_block_lun {int /*<<< orphan*/  vn; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  disk_stats; } ;
struct ctl_be_block_io {int num_bios_sent; int send_complete; int /*<<< orphan*/  ds_t0; } ;
struct cdevsw {int /*<<< orphan*/  (* d_strategy ) (struct bio*) ;} ;
struct cdev {int dummy; } ;
struct bio {int /*<<< orphan*/  bio_error; struct cdev* bio_dev; scalar_t__ bio_pblkno; struct ctl_be_block_io* bio_caller1; int /*<<< orphan*/  (* bio_done ) (struct bio*) ;scalar_t__ bio_data; scalar_t__ bio_offset; int /*<<< orphan*/  bio_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cdevsw* FUNC5 (int /*<<< orphan*/ ,struct cdev**,int*) ; 
 struct bio* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 

__attribute__((used)) static void
FUNC10(struct ctl_be_block_lun *be_lun,
		       struct ctl_be_block_io *beio)
{
	struct bio *bio;
	struct cdevsw *csw;
	struct cdev *dev;
	int ref;

	FUNC0("entered\n");

	/* This can't fail, it's a blocking allocation. */
	bio = FUNC6();

	bio->bio_cmd	    = BIO_FLUSH;
	bio->bio_offset	    = 0;
	bio->bio_data	    = 0;
	bio->bio_done	    = ctl_be_block_biodone;
	bio->bio_caller1    = beio;
	bio->bio_pblkno	    = 0;

	/*
	 * We don't need to acquire the LUN lock here, because we are only
	 * sending one bio, and so there is no other context to synchronize
	 * with.
	 */
	beio->num_bios_sent = 1;
	beio->send_complete = 1;

	FUNC1(&beio->ds_t0);
	FUNC7(&be_lun->io_lock);
	FUNC4(be_lun->disk_stats, &beio->ds_t0);
	FUNC8(&be_lun->io_lock);

	csw = FUNC5(be_lun->vn, &dev, &ref);
	if (csw) {
		bio->bio_dev = dev;
		csw->d_strategy(bio);
		FUNC3(dev, ref);
	} else {
		bio->bio_error = ENXIO;
		FUNC2(bio);
	}
}