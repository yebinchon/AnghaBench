#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long long zv_volsize; int zv_flags; int /*<<< orphan*/  zv_minor; int /*<<< orphan*/  zv_objset; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  sysevent_id_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DDI_SLEEP ; 
 int /*<<< orphan*/  DEV_PHYS_PATH ; 
 int /*<<< orphan*/  EC_DEV_STATUS ; 
 int /*<<< orphan*/  ESC_DEV_DLE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  SUNW_VENDOR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ZVOL_DUMPIFIED ; 
 char* ZVOL_PSEUDO_DEV ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_dip ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static int
FUNC14(zvol_state_t *zv, uint64_t volsize)
{
	uint64_t old_volsize = 0ULL;
	int error = 0;

	FUNC0(FUNC1(&zfsdev_state_lock));

	/*
	 * Reinitialize the dump area to the new size. If we
	 * failed to resize the dump area then restore it back to
	 * its original size.  We must set the new volsize prior
	 * to calling dumpvp_resize() to ensure that the devices'
	 * size(9P) is not visible by the dump subsystem.
	 */
	old_volsize = zv->zv_volsize;
	FUNC12(zv, volsize);

#ifdef ZVOL_DUMP
	if (zv->zv_flags & ZVOL_DUMPIFIED) {
		if ((error = zvol_dumpify(zv)) != 0 ||
		    (error = dumpvp_resize()) != 0) {
			int dumpify_error;

			(void) zvol_update_volsize(zv->zv_objset, old_volsize);
			zvol_size_changed(zv, old_volsize);
			dumpify_error = zvol_dumpify(zv);
			error = dumpify_error ? dumpify_error : error;
		}
	}
#endif	/* ZVOL_DUMP */

#ifdef illumos
	/*
	 * Generate a LUN expansion event.
	 */
	if (error == 0) {
		sysevent_id_t eid;
		nvlist_t *attr;
		char *physpath = kmem_zalloc(MAXPATHLEN, KM_SLEEP);

		(void) snprintf(physpath, MAXPATHLEN, "%s%u", ZVOL_PSEUDO_DEV,
		    zv->zv_minor);

		VERIFY(nvlist_alloc(&attr, NV_UNIQUE_NAME, KM_SLEEP) == 0);
		VERIFY(nvlist_add_string(attr, DEV_PHYS_PATH, physpath) == 0);

		(void) ddi_log_sysevent(zfs_dip, SUNW_VENDOR, EC_DEV_STATUS,
		    ESC_DEV_DLE, attr, &eid, DDI_SLEEP);

		nvlist_free(attr);
		kmem_free(physpath, MAXPATHLEN);
	}
#endif	/* illumos */
	return (error);
}