#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ zv_volsize; scalar_t__ zv_volmode; struct g_provider* zv_provider; int /*<<< orphan*/  zv_minor; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  void* uint64_t ;
struct g_provider {scalar_t__ mediasize; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ DDI_SUCCESS ; 
 int /*<<< orphan*/  VBLK ; 
 int /*<<< orphan*/  VCHR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ZFS_VOLMODE_GEOM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_provider*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_dip ; 

__attribute__((used)) static void
FUNC9(zvol_state_t *zv, uint64_t volsize)
{
#ifdef illumos
	dev_t dev = makedevice(ddi_driver_major(zfs_dip), zv->zv_minor);

	zv->zv_volsize = volsize;
	VERIFY(ddi_prop_update_int64(dev, zfs_dip,
	    "Size", volsize) == DDI_SUCCESS);
	VERIFY(ddi_prop_update_int64(dev, zfs_dip,
	    "Nblocks", lbtodb(volsize)) == DDI_SUCCESS);

	/* Notify specfs to invalidate the cached size */
	spec_size_invalidate(dev, VBLK);
	spec_size_invalidate(dev, VCHR);
#else	/* !illumos */
	zv->zv_volsize = volsize;
	if (zv->zv_volmode == ZFS_VOLMODE_GEOM) {
		struct g_provider *pp;

		pp = zv->zv_provider;
		if (pp == NULL)
			return;
		FUNC4();

		/*
		 * Do not invoke resize event when initial size was zero.
		 * ZVOL initializes the size on first open, this is not
		 * real resizing.
		 */
		if (pp->mediasize == 0)
			pp->mediasize = zv->zv_volsize;
		else
			FUNC3(pp, zv->zv_volsize);
		FUNC5();
	}
#endif	/* illumos */
}