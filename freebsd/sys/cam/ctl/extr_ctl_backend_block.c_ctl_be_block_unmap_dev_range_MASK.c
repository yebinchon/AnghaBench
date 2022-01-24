#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ blocksize; } ;
struct ctl_be_block_lun {int /*<<< orphan*/  io_lock; TYPE_1__ cbe_lun; int /*<<< orphan*/  vn; } ;
struct ctl_be_block_io {int send_complete; int /*<<< orphan*/  num_bios_sent; } ;
struct cdevsw {int /*<<< orphan*/  (* d_strategy ) (struct bio*) ;} ;
struct cdev {int dummy; } ;
struct bio {scalar_t__ bio_length; int /*<<< orphan*/  bio_error; scalar_t__ bio_pblkno; struct ctl_be_block_io* bio_caller1; int /*<<< orphan*/  (* bio_done ) (struct bio*) ;scalar_t__ bio_data; scalar_t__ bio_offset; struct cdev* bio_dev; int /*<<< orphan*/  bio_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_DELETE ; 
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ LONG_MAX ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*,int) ; 
 struct cdevsw* FUNC3 (int /*<<< orphan*/ ,struct cdev**,int*) ; 
 struct bio* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 

__attribute__((used)) static void
FUNC8(struct ctl_be_block_lun *be_lun,
		       struct ctl_be_block_io *beio,
		       uint64_t off, uint64_t len, int last)
{
	struct bio *bio;
	uint64_t maxlen;
	struct cdevsw *csw;
	struct cdev *dev;
	int ref;

	csw = FUNC3(be_lun->vn, &dev, &ref);
	maxlen = LONG_MAX - (LONG_MAX % be_lun->cbe_lun.blocksize);
	while (len > 0) {
		bio = FUNC4();
		bio->bio_cmd	    = BIO_DELETE;
		bio->bio_dev	    = dev;
		bio->bio_offset	    = off;
		bio->bio_length	    = FUNC0(len, maxlen);
		bio->bio_data	    = 0;
		bio->bio_done	    = ctl_be_block_biodone;
		bio->bio_caller1    = beio;
		bio->bio_pblkno     = off / be_lun->cbe_lun.blocksize;

		off += bio->bio_length;
		len -= bio->bio_length;

		FUNC5(&be_lun->io_lock);
		beio->num_bios_sent++;
		if (last && len == 0)
			beio->send_complete = 1;
		FUNC6(&be_lun->io_lock);

		if (csw) {
			csw->d_strategy(bio);
		} else {
			bio->bio_error = ENXIO;
			FUNC1(bio);
		}
	}
	if (csw)
		FUNC2(dev, ref);
}