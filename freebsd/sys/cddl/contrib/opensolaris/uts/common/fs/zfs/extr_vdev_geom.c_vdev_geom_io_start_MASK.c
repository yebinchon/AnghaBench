#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int io_type; struct bio* io_bio; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_offset; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_target_timestamp; void* io_error; int /*<<< orphan*/  io_cmd; TYPE_3__* io_vd; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_11__ {struct g_consumer* vdev_tsd; int /*<<< orphan*/  vdev_notrim; int /*<<< orphan*/  vdev_nowritecache; } ;
typedef  TYPE_3__ vdev_t ;
struct g_consumer {TYPE_1__* provider; } ;
struct bio {int /*<<< orphan*/  bio_done; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_offset; int /*<<< orphan*/ * bio_data; int /*<<< orphan*/  bio_cmd; TYPE_2__* bio_caller1; } ;
struct TYPE_9__ {int /*<<< orphan*/  mediasize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BIO_DELETE ; 
 int /*<<< orphan*/  BIO_FLUSH ; 
 int /*<<< orphan*/  BIO_READ ; 
 int /*<<< orphan*/  BIO_WRITE ; 
#define  DKIOCFLUSHWRITECACHE 132 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  ENXIO ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
#define  ZIO_TYPE_FREE 131 
#define  ZIO_TYPE_IOCTL 130 
#define  ZIO_TYPE_READ 129 
#define  ZIO_TYPE_WRITE 128 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  vdev_geom_bio_delete_disable ; 
 int /*<<< orphan*/  vdev_geom_bio_flush_disable ; 
 int /*<<< orphan*/  vdev_geom_io_intr ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  zfs_nocacheflush ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10(zio_t *zio)
{
	vdev_t *vd;
	struct g_consumer *cp;
	struct bio *bp;
	int error;

	vd = zio->io_vd;

	switch (zio->io_type) {
	case ZIO_TYPE_IOCTL:
		/* XXPOLICY */
		if (!FUNC6(vd)) {
			zio->io_error = FUNC1(ENXIO);
			FUNC9(zio);
			return;
		} else {
			switch (zio->io_cmd) {
			case DKIOCFLUSHWRITECACHE:
				if (zfs_nocacheflush || vdev_geom_bio_flush_disable)
					break;
				if (vd->vdev_nowritecache) {
					zio->io_error = FUNC1(ENOTSUP);
					break;
				}
				goto sendreq;
			default:
				zio->io_error = FUNC1(ENOTSUP);
			}
		}

		FUNC7(zio);
		return;
	case ZIO_TYPE_FREE:
		if (vd->vdev_notrim) {
			zio->io_error = FUNC1(ENOTSUP);
		} else if (!vdev_geom_bio_delete_disable) {
			goto sendreq;
		}
		FUNC7(zio);
		return;
	}
sendreq:
	FUNC0(zio->io_type == ZIO_TYPE_READ ||
	    zio->io_type == ZIO_TYPE_WRITE ||
	    zio->io_type == ZIO_TYPE_FREE ||
	    zio->io_type == ZIO_TYPE_IOCTL);

	cp = vd->vdev_tsd;
	if (cp == NULL) {
		zio->io_error = FUNC1(ENXIO);
		FUNC9(zio);
		return;
	}
	bp = FUNC4();
	bp->bio_caller1 = zio;
	switch (zio->io_type) {
	case ZIO_TYPE_READ:
	case ZIO_TYPE_WRITE:
		zio->io_target_timestamp = FUNC8(zio);
		bp->bio_offset = zio->io_offset;
		bp->bio_length = zio->io_size;
		if (zio->io_type == ZIO_TYPE_READ) {
			bp->bio_cmd = BIO_READ;
			bp->bio_data =
			    FUNC2(zio->io_abd, zio->io_size);
		} else {
			bp->bio_cmd = BIO_WRITE;
			bp->bio_data =
			    FUNC3(zio->io_abd, zio->io_size);
		}
		break;
	case ZIO_TYPE_FREE:
		bp->bio_cmd = BIO_DELETE;
		bp->bio_data = NULL;
		bp->bio_offset = zio->io_offset;
		bp->bio_length = zio->io_size;
		break;
	case ZIO_TYPE_IOCTL:
		bp->bio_cmd = BIO_FLUSH;
		bp->bio_data = NULL;
		bp->bio_offset = cp->provider->mediasize;
		bp->bio_length = 0;
		break;
	}
	bp->bio_done = vdev_geom_io_intr;
	zio->io_bio = bp;

	FUNC5(bp, cp);
}