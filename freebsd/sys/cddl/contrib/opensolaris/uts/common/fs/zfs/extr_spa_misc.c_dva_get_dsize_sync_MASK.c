#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vdev_deflate_ratio; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_8__ {scalar_t__ spa_deflate; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  dva_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int SPA_MINBLOCKSHIFT ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,int) ; 

uint64_t
FUNC6(spa_t *spa, const dva_t *dva)
{
	uint64_t asize = FUNC1(dva);
	uint64_t dsize = asize;

	FUNC0(FUNC4(spa, SCL_ALL, RW_READER) != 0);

	if (asize != 0 && spa->spa_deflate) {
		uint64_t vdev = FUNC2(dva);
		vdev_t *vd = FUNC5(spa, vdev);
		if (vd == NULL) {
			FUNC3(
			    "dva_get_dsize_sync(): bad DVA %llu:%llu",
			    (u_longlong_t)vdev, (u_longlong_t)asize);
		}
		dsize = (asize >> SPA_MINBLOCKSHIFT) * vd->vdev_deflate_ratio;
	}

	return (dsize);
}