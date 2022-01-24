#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  vs_aux; } ;
struct TYPE_15__ {char* vdev_path; scalar_t__ vdev_prevstate; int /*<<< orphan*/  vdev_nowritecache; TYPE_1__ vdev_stat; TYPE_12__* vdev_spa; int /*<<< orphan*/  vdev_reopening; struct g_consumer* vdev_tsd; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int uint64_t ;
struct g_provider {scalar_t__ sectorsize; char* name; int mediasize; int stripesize; scalar_t__ stripeoffset; } ;
struct g_consumer {scalar_t__ acw; struct g_provider* provider; int /*<<< orphan*/ * private; } ;
struct consumer_vdev_elem {TYPE_2__* vd; } ;
struct consumer_priv_t {int dummy; } ;
struct TYPE_13__ {scalar_t__ spa_load_state; scalar_t__ spa_splitting_newspa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EINVAL ; 
 int ENOENT ; 
 int FWRITE ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct consumer_priv_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct consumer_priv_t*,struct consumer_vdev_elem*,int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_LOAD_CREATE ; 
 scalar_t__ SPA_LOAD_NONE ; 
 int SPA_MAXASHIFT ; 
 int /*<<< orphan*/  SPA_MINBLOCKSIZE ; 
 int /*<<< orphan*/  VDEV_AUX_BAD_LABEL ; 
 int /*<<< orphan*/  VDEV_AUX_OPEN_FAILED ; 
 scalar_t__ VDEV_PAD_SIZE ; 
 scalar_t__ VDEV_STATE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*) ; 
 int /*<<< orphan*/  elems ; 
 int FUNC9 (struct g_consumer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct consumer_vdev_elem* FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int FUNC15 (TYPE_12__*) ; 
 scalar_t__ FUNC16 (char*,char*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct g_consumer*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 struct g_consumer* FUNC22 (TYPE_2__*) ; 
 struct g_consumer* FUNC23 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,struct g_consumer*) ; 
 int /*<<< orphan*/  zfs_geom_probe_vdev_key ; 

__attribute__((used)) static int
FUNC26(vdev_t *vd, uint64_t *psize, uint64_t *max_psize,
    uint64_t *logical_ashift, uint64_t *physical_ashift)
{
	struct g_provider *pp;
	struct g_consumer *cp;
	size_t bufsize;
	int error;

	/* Set the TLS to indicate downstack that we should not access zvols*/
	FUNC7(FUNC17(zfs_geom_probe_vdev_key, vd) == 0);

	/*
	 * We must have a pathname, and it must be absolute.
	 */
	if (vd->vdev_path == NULL || FUNC16(vd->vdev_path, "/dev/", 5) != 0) {
		vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
		return (EINVAL);
	}

	/*
	 * Reopen the device if it's not currently open. Otherwise,
	 * just update the physical size of the device.
	 */
	if ((cp = vd->vdev_tsd) != NULL) {
		FUNC0(vd->vdev_reopening);
		goto skip_open;
	}

	FUNC1();
	FUNC11();
	error = 0;

	if (vd->vdev_spa->spa_splitting_newspa ||
	    (vd->vdev_prevstate == VDEV_STATE_UNKNOWN &&
	     vd->vdev_spa->spa_load_state == SPA_LOAD_NONE ||
	     vd->vdev_spa->spa_load_state == SPA_LOAD_CREATE)) {
		/*
		 * We are dealing with a vdev that hasn't been previously
		 * opened (since boot), and we are not loading an
		 * existing pool configuration.  This looks like a
		 * vdev add operation to a new or existing pool.
		 * Assume the user knows what he/she is doing and find
		 * GEOM provider by its name, ignoring GUID mismatches.
		 *
		 * XXPOLICY: It would be safer to only allow a device
		 *           that is unlabeled or labeled but missing
		 *           GUID information to be opened in this fashion,
		 *           unless we are doing a split, in which case we
		 *           should allow any guid.
		 */
		cp = FUNC23(vd, 0);
	} else {
		/*
		 * Try using the recorded path for this device, but only
		 * accept it if its label data contains the expected GUIDs.
		 */
		cp = FUNC23(vd, 1);
		if (cp == NULL) {
			/*
			 * The device at vd->vdev_path doesn't have the
			 * expected GUIDs. The disks might have merely
			 * moved around so try all other GEOM providers
			 * to find one with the right GUIDs.
			 */
			cp = FUNC22(vd);
		}
	}

	/* Clear the TLS now that tasting is done */
	FUNC7(FUNC17(zfs_geom_probe_vdev_key, NULL) == 0);

	if (cp == NULL) {
		FUNC8(1, "Vdev %s not found.", vd->vdev_path);
		error = ENOENT;
	} else {
		struct consumer_priv_t *priv;
		struct consumer_vdev_elem *elem;
		int spamode;

		priv = (struct consumer_priv_t*)&cp->private;
		if (cp->private == NULL)
			FUNC5(priv);
		elem = FUNC10(sizeof(*elem), M_WAITOK|M_ZERO);
		elem->vd = vd;
		FUNC6(priv, elem, elems);

		spamode = FUNC15(vd->vdev_spa);
		if (cp->provider->sectorsize > VDEV_PAD_SIZE ||
		    !FUNC2(cp->provider->sectorsize)) {
			FUNC8(1, "Provider %s has unsupported sectorsize.",
			    cp->provider->name);

			FUNC21(vd);
			error = EINVAL;
			cp = NULL;
		} else if (cp->acw == 0 && (spamode & FWRITE) != 0) {
			int i;

			for (i = 0; i < 5; i++) {
				error = FUNC9(cp, 0, 1, 0);
				if (error == 0)
					break;
				FUNC12();
				FUNC18(vd, 0, "vdev", hz / 2);
				FUNC11();
			}
			if (error != 0) {
				FUNC14("ZFS WARNING: Unable to open %s for writing (error=%d).\n",
				    cp->provider->name, error);
				FUNC21(vd);
				cp = NULL;
			}
		}
	}

	/* Fetch initial physical path information for this device. */
	if (cp != NULL) {
		FUNC20(cp, "GEOM::physpath");
	
		/* Set other GEOM characteristics */
		FUNC24(vd, cp, /*do_null_update*/B_FALSE);
		FUNC25(vd, cp);
	}

	FUNC12();
	FUNC4();
	if (cp == NULL) {
		vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
		FUNC19(vd, "vdev_geom_open: failed to open [error=%d]",
		    error);
		return (error);
	}
skip_open:
	pp = cp->provider;

	/*
	 * Determine the actual size of the device.
	 */
	*max_psize = *psize = pp->mediasize;

	/*
	 * Determine the device's minimum transfer size and preferred
	 * transfer size.
	 */
	*logical_ashift = FUNC13(FUNC3(pp->sectorsize, SPA_MINBLOCKSIZE)) - 1;
	*physical_ashift = 0;
	if (pp->stripesize > (1 << *logical_ashift) && FUNC2(pp->stripesize) &&
	    pp->stripesize <= (1 << SPA_MAXASHIFT) && pp->stripeoffset == 0)
		*physical_ashift = FUNC13(pp->stripesize) - 1;

	/*
	 * Clear the nowritecache settings, so that on a vdev_reopen()
	 * we will try again.
	 */
	vd->vdev_nowritecache = B_FALSE;

	return (0);
}