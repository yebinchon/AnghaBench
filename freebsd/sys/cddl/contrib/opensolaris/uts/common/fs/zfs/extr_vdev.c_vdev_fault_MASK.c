#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned long long vdev_faulted; unsigned long long vdev_degraded; int /*<<< orphan*/ * vdev_aux; int /*<<< orphan*/  vdev_islog; int /*<<< orphan*/  vdev_delayed_close; int /*<<< orphan*/  vdev_label_aux; struct TYPE_10__* vdev_top; TYPE_1__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_aux_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_9__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  SCL_NONE ; 
 int /*<<< orphan*/  VDEV_STATE_DEGRADED ; 
 int /*<<< orphan*/  VDEV_STATE_FAULTED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(spa_t *spa, uint64_t guid, vdev_aux_t aux)
{
	vdev_t *vd, *tvd;

	FUNC1(spa, SCL_NONE);

	if ((vd = FUNC0(spa, guid, B_TRUE)) == NULL)
		return (FUNC2(spa, NULL, ENODEV));

	if (!vd->vdev_ops->vdev_op_leaf)
		return (FUNC2(spa, NULL, ENOTSUP));

	tvd = vd->vdev_top;

	/*
	 * We don't directly use the aux state here, but if we do a
	 * vdev_reopen(), we need this value to be present to remember why we
	 * were faulted.
	 */
	vd->vdev_label_aux = aux;

	/*
	 * Faulted state takes precedence over degraded.
	 */
	vd->vdev_delayed_close = B_FALSE;
	vd->vdev_faulted = 1ULL;
	vd->vdev_degraded = 0ULL;
	FUNC6(vd, B_FALSE, VDEV_STATE_FAULTED, aux);

	/*
	 * If this device has the only valid copy of the data, then
	 * back off and simply mark the vdev as degraded instead.
	 */
	if (!tvd->vdev_islog && vd->vdev_aux == NULL && FUNC3(vd)) {
		vd->vdev_degraded = 1ULL;
		vd->vdev_faulted = 0ULL;

		/*
		 * If we reopen the device and it's not dead, only then do we
		 * mark it degraded.
		 */
		FUNC5(tvd);

		if (FUNC4(vd))
			FUNC6(vd, B_FALSE, VDEV_STATE_DEGRADED, aux);
	}

	return (FUNC2(spa, vd, 0));
}