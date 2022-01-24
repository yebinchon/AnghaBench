#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  vs_aux; } ;
struct TYPE_6__ {int vdev_nparity; int vdev_children; int vdev_open_error; TYPE_1__ vdev_stat; int /*<<< orphan*/  vdev_physical_ashift; int /*<<< orphan*/  vdev_ashift; scalar_t__ vdev_max_asize; scalar_t__ vdev_asize; struct TYPE_6__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VDEV_AUX_BAD_LABEL ; 
 int /*<<< orphan*/  VDEV_AUX_NO_REPLICAS ; 
 int VDEV_RAIDZ_MAXPARITY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(vdev_t *vd, uint64_t *asize, uint64_t *max_asize,
    uint64_t *logical_ashift, uint64_t *physical_ashift)
{
	vdev_t *cvd;
	uint64_t nparity = vd->vdev_nparity;
	int c;
	int lasterror = 0;
	int numerrors = 0;

	FUNC0(nparity > 0);

	if (nparity > VDEV_RAIDZ_MAXPARITY ||
	    vd->vdev_children < nparity + 1) {
		vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
		return (FUNC3(EINVAL));
	}

	FUNC4(vd);

	for (c = 0; c < vd->vdev_children; c++) {
		cvd = vd->vdev_child[c];

		if (cvd->vdev_open_error != 0) {
			lasterror = cvd->vdev_open_error;
			numerrors++;
			continue;
		}

		*asize = FUNC2(*asize - 1, cvd->vdev_asize - 1) + 1;
		*max_asize = FUNC2(*max_asize - 1, cvd->vdev_max_asize - 1) + 1;
		*logical_ashift = FUNC1(*logical_ashift, cvd->vdev_ashift);
		*physical_ashift = FUNC1(*physical_ashift,
		    cvd->vdev_physical_ashift);
	}

	*asize *= vd->vdev_children;
	*max_asize *= vd->vdev_children;

	if (numerrors > nparity) {
		vd->vdev_stat.vs_aux = VDEV_AUX_NO_REPLICAS;
		return (lasterror);
	}

	return (0);
}