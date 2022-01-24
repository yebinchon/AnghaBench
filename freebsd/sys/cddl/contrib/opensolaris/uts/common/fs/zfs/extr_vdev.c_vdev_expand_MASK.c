#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vdev_asize; int vdev_ms_shift; int vdev_ms_count; int /*<<< orphan*/  vdev_spa; struct TYPE_7__* vdev_top; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(vdev_t *vd, uint64_t txg)
{
	FUNC0(vd->vdev_top == vd);
	FUNC0(FUNC2(vd->vdev_spa, SCL_ALL, RW_WRITER) == SCL_ALL);
	FUNC0(FUNC4(vd));

	FUNC6(vd);

	if ((vd->vdev_asize >> vd->vdev_ms_shift) > vd->vdev_ms_count) {
		FUNC1(FUNC5(vd, txg) == 0);
		FUNC3(vd);
	}
}