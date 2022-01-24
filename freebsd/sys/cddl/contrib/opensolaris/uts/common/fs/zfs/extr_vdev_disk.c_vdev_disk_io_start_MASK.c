#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int io_error; scalar_t__ io_type; int io_cmd; int io_flags; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_offset; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_target_timestamp; int /*<<< orphan*/ * io_vsd_ops; struct dk_callback* io_vsd; TYPE_3__* io_vd; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_16__ {int /*<<< orphan*/  vdev_nowritecache; TYPE_4__* vdev_tsd; } ;
typedef  TYPE_3__ vdev_t ;
struct TYPE_17__ {int /*<<< orphan*/ * vd_lh; scalar_t__ vd_ldi_offline; } ;
typedef  TYPE_4__ vdev_disk_t ;
struct TYPE_14__ {int /*<<< orphan*/  b_addr; } ;
struct TYPE_19__ {int b_flags; int (* b_iodone ) () ;int /*<<< orphan*/  b_bufsize; int /*<<< orphan*/  b_lblkno; TYPE_1__ b_un; int /*<<< orphan*/  b_bcount; } ;
struct TYPE_18__ {TYPE_6__ vb_buf; TYPE_2__* vb_io; } ;
typedef  TYPE_5__ vdev_buf_t ;
struct dk_callback {TYPE_2__* dkc_cookie; int /*<<< orphan*/  dkc_flag; int /*<<< orphan*/  dkc_callback; } ;
typedef  TYPE_6__ buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_BUSY ; 
 int B_FAILFAST ; 
 int B_NOCACHE ; 
 int B_READ ; 
 int B_WRITE ; 
#define  DKIOCFLUSHWRITECACHE 128 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FKIOCTL ; 
 int /*<<< orphan*/  FLUSH_VOLATILE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ZIO_FLAG_IO_RETRY ; 
 int ZIO_FLAG_TRYHARD ; 
 scalar_t__ ZIO_TYPE_IOCTL ; 
 scalar_t__ ZIO_TYPE_READ ; 
 scalar_t__ ZIO_TYPE_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  kcred ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 scalar_t__ vdev_disk_io_intr ; 
 int /*<<< orphan*/  vdev_disk_ioctl_done ; 
 int /*<<< orphan*/  vdev_disk_vsd_ops ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  zfs_nocacheflush ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC14(zio_t *zio)
{
	vdev_t *vd = zio->io_vd;
	vdev_disk_t *dvd = vd->vdev_tsd;
	vdev_buf_t *vb;
	struct dk_callback *dkc;
	buf_t *bp;
	int error;

	/*
	 * If the vdev is closed, it's likely in the REMOVED or FAULTED state.
	 * Nothing to be done here but return failure.
	 */
	if (dvd == NULL || (dvd->vd_ldi_offline && dvd->vd_lh == NULL)) {
		zio->io_error = FUNC1(ENXIO);
		FUNC13(zio);
		return;
	}

	if (zio->io_type == ZIO_TYPE_IOCTL) {
		/* XXPOLICY */
		if (!FUNC10(vd)) {
			zio->io_error = FUNC1(ENXIO);
			FUNC13(zio);
			return;
		}

		switch (zio->io_cmd) {

		case DKIOCFLUSHWRITECACHE:

			if (zfs_nocacheflush)
				break;

			if (vd->vdev_nowritecache) {
				zio->io_error = FUNC1(ENOTSUP);
				break;
			}

			zio->io_vsd = dkc = FUNC6(sizeof (*dkc), KM_SLEEP);
			zio->io_vsd_ops = &vdev_disk_vsd_ops;

			dkc->dkc_callback = vdev_disk_ioctl_done;
			dkc->dkc_flag = FLUSH_VOLATILE;
			dkc->dkc_cookie = zio;

			error = FUNC8(dvd->vd_lh, zio->io_cmd,
			    (uintptr_t)dkc, FKIOCTL, kcred, NULL);

			if (error == 0) {
				/*
				 * The ioctl will be done asychronously,
				 * and will call vdev_disk_ioctl_done()
				 * upon completion.
				 */
				return;
			}

			zio->io_error = error;

			break;

		default:
			zio->io_error = FUNC1(ENOTSUP);
		}

		FUNC11(zio);
		return;
	}

	FUNC0(zio->io_type == ZIO_TYPE_READ || zio->io_type == ZIO_TYPE_WRITE);
	zio->io_target_timestamp = FUNC12(zio);

	vb = FUNC6(sizeof (vdev_buf_t), KM_SLEEP);

	vb->vb_io = zio;
	bp = &vb->vb_buf;

	FUNC5(bp);
	bp->b_flags = B_BUSY | B_NOCACHE |
	    (zio->io_type == ZIO_TYPE_READ ? B_READ : B_WRITE);
	if (!(zio->io_flags & (ZIO_FLAG_IO_RETRY | ZIO_FLAG_TRYHARD)))
		bp->b_flags |= B_FAILFAST;
	bp->b_bcount = zio->io_size;

	if (zio->io_type == ZIO_TYPE_READ) {
		bp->b_un.b_addr =
		    FUNC3(zio->io_abd, zio->io_size);
	} else {
		bp->b_un.b_addr =
		    FUNC4(zio->io_abd, zio->io_size);
	}

	bp->b_lblkno = FUNC7(zio->io_offset);
	bp->b_bufsize = zio->io_size;
	bp->b_iodone = (int (*)())vdev_disk_io_intr;

	/* ldi_strategy() will return non-zero only on programming errors */
	FUNC2(FUNC9(dvd->vd_lh, bp) == 0);
}