#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  vs_aux; } ;
struct TYPE_7__ {scalar_t__ vdev_children; int vdev_open_error; TYPE_1__ vdev_stat; int /*<<< orphan*/  vdev_islog; struct TYPE_7__** vdev_child; int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_LOAD_NONE ; 
 int /*<<< orphan*/  VDEV_AUX_BAD_LABEL ; 
 int /*<<< orphan*/  VDEV_AUX_NO_REPLICAS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(vdev_t *vd, uint64_t *asize, uint64_t *max_asize,
    uint64_t *logical_ashift, uint64_t *physical_ashift)
{
	spa_t *spa = vd->vdev_spa;
	int lasterror = 0;
	int numerrors = 0;

	if (vd->vdev_children == 0) {
		vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
		return (FUNC0(EINVAL));
	}

	FUNC4(vd);

	for (int c = 0; c < vd->vdev_children; c++) {
		vdev_t *cvd = vd->vdev_child[c];

		if (cvd->vdev_open_error && !cvd->vdev_islog) {
			lasterror = cvd->vdev_open_error;
			numerrors++;
		}
	}

	if (FUNC1(spa) != SPA_LOAD_NONE)
		FUNC2(spa, numerrors);

	if (FUNC3(vd, numerrors)) {
		vd->vdev_stat.vs_aux = VDEV_AUX_NO_REPLICAS;
		return (lasterror);
	}

	*asize = 0;
	*max_asize = 0;
	*logical_ashift = 0;
	*physical_ashift = 0;

	return (0);
}