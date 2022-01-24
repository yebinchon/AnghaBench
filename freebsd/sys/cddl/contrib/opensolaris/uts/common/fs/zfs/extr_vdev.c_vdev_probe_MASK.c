#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int io_flags; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_21__ {int /*<<< orphan*/  vdev_psize; int /*<<< orphan*/  vdev_probe_lock; int /*<<< orphan*/  vdev_probe_wanted; TYPE_2__* vdev_probe_zio; void* vdev_cant_write; void* vdev_cant_read; TYPE_1__* vdev_ops; int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_3__ vdev_t ;
struct TYPE_22__ {int vps_flags; } ;
typedef  TYPE_4__ vdev_probe_stats_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_19__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ZIO ; 
 int /*<<< orphan*/  SPA_ASYNC_PROBE ; 
 int VDEV_LABELS ; 
 int /*<<< orphan*/  VDEV_PAD_SIZE ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_OFF ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_CONFIG_WRITER ; 
 int ZIO_FLAG_DONT_AGGREGATE ; 
 int ZIO_FLAG_DONT_CACHE ; 
 int ZIO_FLAG_DONT_PROPAGATE ; 
 int ZIO_FLAG_PROBE ; 
 int ZIO_FLAG_TRYHARD ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_label_t ; 
 int /*<<< orphan*/  vdev_probe_done ; 
 int /*<<< orphan*/  vl_pad2 ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 TYPE_2__* FUNC12 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

zio_t *
FUNC13(vdev_t *vd, zio_t *zio)
{
	spa_t *spa = vd->vdev_spa;
	vdev_probe_stats_t *vps = NULL;
	zio_t *pio;

	FUNC0(vd->vdev_ops->vdev_op_leaf);

	/*
	 * Don't probe the probe.
	 */
	if (zio && (zio->io_flags & ZIO_FLAG_PROBE))
		return (NULL);

	/*
	 * To prevent 'probe storms' when a device fails, we create
	 * just one probe i/o at a time.  All zios that want to probe
	 * this vdev will become parents of the probe io.
	 */
	FUNC3(&vd->vdev_probe_lock);

	if ((pio = vd->vdev_probe_zio) == NULL) {
		vps = FUNC2(sizeof (*vps), KM_SLEEP);

		vps->vps_flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_PROBE |
		    ZIO_FLAG_DONT_CACHE | ZIO_FLAG_DONT_AGGREGATE |
		    ZIO_FLAG_TRYHARD;

		if (FUNC7(spa, SCL_ZIO, RW_WRITER)) {
			/*
			 * vdev_cant_read and vdev_cant_write can only
			 * transition from TRUE to FALSE when we have the
			 * SCL_ZIO lock as writer; otherwise they can only
			 * transition from FALSE to TRUE.  This ensures that
			 * any zio looking at these values can assume that
			 * failures persist for the life of the I/O.  That's
			 * important because when a device has intermittent
			 * connectivity problems, we want to ensure that
			 * they're ascribed to the device (ENXIO) and not
			 * the zio (EIO).
			 *
			 * Since we hold SCL_ZIO as writer here, clear both
			 * values so the probe can reevaluate from first
			 * principles.
			 */
			vps->vps_flags |= ZIO_FLAG_CONFIG_WRITER;
			vd->vdev_cant_read = B_FALSE;
			vd->vdev_cant_write = B_FALSE;
		}

		vd->vdev_probe_zio = pio = FUNC11(NULL, spa, vd,
		    vdev_probe_done, vps,
		    vps->vps_flags | ZIO_FLAG_DONT_PROPAGATE);

		/*
		 * We can't change the vdev state in this context, so we
		 * kick off an async task to do it on our behalf.
		 */
		if (zio != NULL) {
			vd->vdev_probe_wanted = B_TRUE;
			FUNC6(spa, SPA_ASYNC_PROBE);
		}
	}

	if (zio != NULL)
		FUNC9(zio, pio);

	FUNC4(&vd->vdev_probe_lock);

	if (vps == NULL) {
		FUNC0(zio != NULL);
		return (NULL);
	}

	for (int l = 1; l < VDEV_LABELS; l++) {
		FUNC10(FUNC12(pio, vd,
		    FUNC8(vd->vdev_psize, l,
		    FUNC5(vdev_label_t, vl_pad2)), VDEV_PAD_SIZE,
		    FUNC1(VDEV_PAD_SIZE, B_TRUE),
		    ZIO_CHECKSUM_OFF, vdev_probe_done, vps,
		    ZIO_PRIORITY_SYNC_READ, vps->vps_flags, B_TRUE));
	}

	if (zio == NULL)
		return (pio);

	FUNC10(pio);
	return (NULL);
}