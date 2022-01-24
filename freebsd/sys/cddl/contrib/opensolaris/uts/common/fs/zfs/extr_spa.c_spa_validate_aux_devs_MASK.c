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
struct TYPE_10__ {int /*<<< orphan*/  vdev_guid; struct TYPE_10__* vdev_top; TYPE_1__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_labeltype_t ;
typedef  scalar_t__ uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_11__ {scalar_t__ sav_npending; int /*<<< orphan*/ ** sav_pending; } ;
typedef  TYPE_3__ spa_aux_vdev_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_9__ {char const* vdev_op_type; int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTBLK ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VDEV_ALLOC_L2CACHE ; 
 int VDEV_ALLOC_SPARE ; 
 int /*<<< orphan*/  VDEV_TYPE_DISK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ***,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC12(spa_t *spa, nvlist_t *nvroot, uint64_t crtxg, int mode,
    spa_aux_vdev_t *sav, const char *config, uint64_t version,
    vdev_labeltype_t label)
{
	nvlist_t **dev;
	uint_t i, ndev;
	vdev_t *vd;
	int error;

	FUNC0(FUNC5(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

	/*
	 * It's acceptable to have no devs specified.
	 */
	if (FUNC4(nvroot, config, &dev, &ndev) != 0)
		return (0);

	if (ndev == 0)
		return (FUNC1(EINVAL));

	/*
	 * Make sure the pool is formatted with a version that supports this
	 * device type.
	 */
	if (FUNC7(spa) < version)
		return (FUNC1(ENOTSUP));

	/*
	 * Set the pending device list so we correctly handle device in-use
	 * checking.
	 */
	sav->sav_pending = dev;
	sav->sav_npending = ndev;

	for (i = 0; i < ndev; i++) {
		if ((error = FUNC6(spa, &vd, dev[i], NULL, 0,
		    mode)) != 0)
			goto out;

		if (!vd->vdev_ops->vdev_op_leaf) {
			FUNC9(vd);
			error = FUNC1(EINVAL);
			goto out;
		}

		/*
		 * The L2ARC currently only supports disk devices in
		 * kernel context.  For user-level testing, we allow it.
		 */
#ifdef _KERNEL
		if ((strcmp(config, ZPOOL_CONFIG_L2CACHE) == 0) &&
		    strcmp(vd->vdev_ops->vdev_op_type, VDEV_TYPE_DISK) != 0) {
			error = SET_ERROR(ENOTBLK);
			vdev_free(vd);
			goto out;
		}
#endif
		vd->vdev_top = vd;

		if ((error = FUNC11(vd)) == 0 &&
		    (error = FUNC10(vd, crtxg, label)) == 0) {
			FUNC2(FUNC3(dev[i], ZPOOL_CONFIG_GUID,
			    vd->vdev_guid) == 0);
		}

		FUNC9(vd);

		if (error &&
		    (mode != VDEV_ALLOC_SPARE && mode != VDEV_ALLOC_L2CACHE))
			goto out;
		else
			error = 0;
	}

out:
	sav->sav_pending = NULL;
	sav->sav_npending = 0;
	return (error);
}