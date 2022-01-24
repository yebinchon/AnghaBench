#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned char const* vic_mapping_object; unsigned char const* vic_births_object; unsigned char const* vic_prev_indirect_vdev; } ;
struct TYPE_8__ {int v_id; int v_ashift; int v_psize; int v_nparity; char* v_name; int v_islog; int v_nchildren; int /*<<< orphan*/  v_children; int /*<<< orphan*/  v_state; struct TYPE_8__* v_top; TYPE_2__ vdev_indirect_config; } ;
typedef  TYPE_1__ vdev_t ;
typedef  TYPE_2__ vdev_indirect_config_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  DATA_TYPE_STRING ; 
 int /*<<< orphan*/  DATA_TYPE_UINT64 ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int VDEV_LABEL_END_SIZE ; 
 int VDEV_LABEL_START_SIZE ; 
 int /*<<< orphan*/  VDEV_STATE_CANT_OPEN ; 
 int /*<<< orphan*/  VDEV_STATE_DEGRADED ; 
 int /*<<< orphan*/  VDEV_STATE_FAULTED ; 
 int /*<<< orphan*/  VDEV_STATE_HEALTHY ; 
 int /*<<< orphan*/  VDEV_STATE_OFFLINE ; 
 int /*<<< orphan*/  VDEV_STATE_REMOVED ; 
 char* VDEV_TYPE_DISK ; 
 char* VDEV_TYPE_FILE ; 
 char* VDEV_TYPE_INDIRECT ; 
 char* VDEV_TYPE_MIRROR ; 
 char* VDEV_TYPE_RAIDZ ; 
 char* VDEV_TYPE_REPLACING ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ASHIFT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ASIZE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_DEGRADED ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_FAULTED ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_INDIRECT_BIRTHS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_INDIRECT_OBJECT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_NOT_PRESENT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_NPARITY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_OFFLINE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PREV_INDIRECT_VDEV ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_REMOVED ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*,int,...) ; 
 int FUNC2 (unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,...) ; 
 unsigned char* FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 int /*<<< orphan*/  v_childlink ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_disk_read ; 
 TYPE_1__* FUNC9 (int) ; 
 int /*<<< orphan*/  vdev_indirect_read ; 
 int /*<<< orphan*/  vdev_mirror_read ; 
 int /*<<< orphan*/  vdev_raidz_read ; 
 int /*<<< orphan*/  vdev_replacing_read ; 

__attribute__((used)) static int
FUNC10(const unsigned char *nvlist, vdev_t *pvdev,
    vdev_t **vdevp, int is_newer)
{
	int rc;
	uint64_t guid, id, ashift, asize, nparity;
	const char *type;
	const char *path;
	vdev_t *vdev, *kid;
	const unsigned char *kids;
	int nkids, i, is_new;
	uint64_t is_offline, is_faulted, is_degraded, is_removed, isnt_present;
	uint64_t is_log;

	if (FUNC2(nvlist, ZPOOL_CONFIG_GUID, DATA_TYPE_UINT64,
	    NULL, &guid)
	    || FUNC2(nvlist, ZPOOL_CONFIG_ID, DATA_TYPE_UINT64, NULL, &id)
	    || FUNC2(nvlist, ZPOOL_CONFIG_TYPE, DATA_TYPE_STRING,
	    NULL, &type)) {
		FUNC4("ZFS: can't find vdev details\n");
		return (ENOENT);
	}

	if (FUNC5(type, VDEV_TYPE_MIRROR)
	    && FUNC5(type, VDEV_TYPE_DISK)
#ifdef ZFS_TEST
	    && strcmp(type, VDEV_TYPE_FILE)
#endif
	    && FUNC5(type, VDEV_TYPE_RAIDZ)
	    && FUNC5(type, VDEV_TYPE_INDIRECT)
	    && FUNC5(type, VDEV_TYPE_REPLACING)) {
		FUNC4("ZFS: can only boot from disk, mirror, raidz1, raidz2 and raidz3 vdevs\n");
		return (EIO);
	}

	is_offline = is_removed = is_faulted = is_degraded = isnt_present = 0;
	is_log = 0;

	FUNC2(nvlist, ZPOOL_CONFIG_OFFLINE, DATA_TYPE_UINT64, NULL,
	    &is_offline);
	FUNC2(nvlist, ZPOOL_CONFIG_REMOVED, DATA_TYPE_UINT64, NULL,
	    &is_removed);
	FUNC2(nvlist, ZPOOL_CONFIG_FAULTED, DATA_TYPE_UINT64, NULL,
	    &is_faulted);
	FUNC2(nvlist, ZPOOL_CONFIG_DEGRADED, DATA_TYPE_UINT64, NULL,
	    &is_degraded);
	FUNC2(nvlist, ZPOOL_CONFIG_NOT_PRESENT, DATA_TYPE_UINT64, NULL,
	    &isnt_present);
	FUNC2(nvlist, ZPOOL_CONFIG_IS_LOG, DATA_TYPE_UINT64, NULL,
	    &is_log);

	vdev = FUNC9(guid);
	if (!vdev) {
		is_new = 1;

		if (!FUNC5(type, VDEV_TYPE_MIRROR))
			vdev = FUNC8(guid, vdev_mirror_read);
		else if (!FUNC5(type, VDEV_TYPE_RAIDZ))
			vdev = FUNC8(guid, vdev_raidz_read);
		else if (!FUNC5(type, VDEV_TYPE_REPLACING))
			vdev = FUNC8(guid, vdev_replacing_read);
		else if (!FUNC5(type, VDEV_TYPE_INDIRECT)) {
			vdev_indirect_config_t *vic;

			vdev = FUNC8(guid, vdev_indirect_read);
			vdev->v_state = VDEV_STATE_HEALTHY;
			vic = &vdev->vdev_indirect_config;

			FUNC2(nvlist,
			    ZPOOL_CONFIG_INDIRECT_OBJECT, DATA_TYPE_UINT64,
			    NULL, &vic->vic_mapping_object);
			FUNC2(nvlist,
			    ZPOOL_CONFIG_INDIRECT_BIRTHS, DATA_TYPE_UINT64,
			    NULL, &vic->vic_births_object);
			FUNC2(nvlist,
			    ZPOOL_CONFIG_PREV_INDIRECT_VDEV, DATA_TYPE_UINT64,
			    NULL, &vic->vic_prev_indirect_vdev);
		} else
			vdev = FUNC8(guid, vdev_disk_read);

		vdev->v_id = id;
		vdev->v_top = pvdev != NULL ? pvdev : vdev;
		if (FUNC2(nvlist, ZPOOL_CONFIG_ASHIFT,
			DATA_TYPE_UINT64, NULL, &ashift) == 0) {
			vdev->v_ashift = ashift;
		} else {
			vdev->v_ashift = 0;
		}
		if (FUNC2(nvlist, ZPOOL_CONFIG_ASIZE,
		    DATA_TYPE_UINT64, NULL, &asize) == 0) {
			vdev->v_psize = asize +
			    VDEV_LABEL_START_SIZE + VDEV_LABEL_END_SIZE;
		}
		if (FUNC2(nvlist, ZPOOL_CONFIG_NPARITY,
			DATA_TYPE_UINT64, NULL, &nparity) == 0) {
			vdev->v_nparity = nparity;
		} else {
			vdev->v_nparity = 0;
		}
		if (FUNC2(nvlist, ZPOOL_CONFIG_PATH,
				DATA_TYPE_STRING, NULL, &path) == 0) {
			if (FUNC7(path, "/dev/", 5) == 0)
				path += 5;
			vdev->v_name = FUNC6(path);
		} else {
			char *name;

			if (!FUNC5(type, "raidz")) {
				if (vdev->v_nparity < 1 ||
				    vdev->v_nparity > 3) {
					FUNC4("ZFS: can only boot from disk, "
					    "mirror, raidz1, raidz2 and raidz3 "
					    "vdevs\n");
					return (EIO);
				}
				FUNC1(&name, "%s%d-%d", type,
				    vdev->v_nparity, id);
			} else {
				FUNC1(&name, "%s-%d", type, id);
			}
			if (name == NULL)
				return (ENOMEM);
			vdev->v_name = name;
		}
		vdev->v_islog = is_log == 1;
	} else {
		is_new = 0;
	}

	if (is_new || is_newer) {
		/*
		 * This is either new vdev or we've already seen this vdev,
		 * but from an older vdev label, so let's refresh its state
		 * from the newer label.
		 */
		if (is_offline)
			vdev->v_state = VDEV_STATE_OFFLINE;
		else if (is_removed)
			vdev->v_state = VDEV_STATE_REMOVED;
		else if (is_faulted)
			vdev->v_state = VDEV_STATE_FAULTED;
		else if (is_degraded)
			vdev->v_state = VDEV_STATE_DEGRADED;
		else if (isnt_present)
			vdev->v_state = VDEV_STATE_CANT_OPEN;
	}

	rc = FUNC2(nvlist, ZPOOL_CONFIG_CHILDREN, DATA_TYPE_NVLIST_ARRAY,
	    &nkids, &kids);
	/*
	 * Its ok if we don't have any kids.
	 */
	if (rc == 0) {
		vdev->v_nchildren = nkids;
		for (i = 0; i < nkids; i++) {
			rc = FUNC10(kids, vdev, &kid, is_newer);
			if (rc)
				return (rc);
			if (is_new)
				FUNC0(&vdev->v_children, kid,
						   v_childlink);
			kids = FUNC3(kids);
		}
	} else {
		vdev->v_nchildren = 0;
	}

	if (vdevp)
		*vdevp = vdev;
	return (0);
}