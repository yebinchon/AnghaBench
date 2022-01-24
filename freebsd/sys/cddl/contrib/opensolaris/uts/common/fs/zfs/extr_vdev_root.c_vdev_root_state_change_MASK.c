#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  VDEV_AUX_NONE ; 
 int /*<<< orphan*/  VDEV_AUX_NO_REPLICAS ; 
 int /*<<< orphan*/  VDEV_STATE_CANT_OPEN ; 
 int /*<<< orphan*/  VDEV_STATE_DEGRADED ; 
 int /*<<< orphan*/  VDEV_STATE_HEALTHY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(vdev_t *vd, int faulted, int degraded)
{
	if (FUNC0(vd, faulted)) {
		FUNC1(vd, B_FALSE, VDEV_STATE_CANT_OPEN,
		    VDEV_AUX_NO_REPLICAS);
	} else if (degraded || faulted) {
		FUNC1(vd, B_FALSE, VDEV_STATE_DEGRADED, VDEV_AUX_NONE);
	} else {
		FUNC1(vd, B_FALSE, VDEV_STATE_HEALTHY, VDEV_AUX_NONE);
	}
}