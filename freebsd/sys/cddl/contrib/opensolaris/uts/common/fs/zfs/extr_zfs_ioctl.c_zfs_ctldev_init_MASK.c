#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zss_data; int /*<<< orphan*/  zss_type; } ;
typedef  TYPE_1__ zfs_soft_state_t ;
typedef  int /*<<< orphan*/  zfs_onexit_t ;
struct cdev {int dummy; } ;
typedef  scalar_t__ minor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DDI_SUCCESS ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSST_CTLDEV ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  zfsdev_close ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  zfsdev_state ; 

__attribute__((used)) static int
FUNC8(struct cdev *devp)
{
	minor_t minor;
	zfs_soft_state_t *zs;

	FUNC0(FUNC1(&spa_namespace_lock));

	minor = FUNC7();
	if (minor == 0)
		return (FUNC2(ENXIO));

	if (FUNC4(zfsdev_state, minor) != DDI_SUCCESS)
		return (FUNC2(EAGAIN));

	FUNC5((void *)(uintptr_t)minor, zfsdev_close);

	zs = FUNC3(zfsdev_state, minor);
	zs->zss_type = ZSST_CTLDEV;
	FUNC6((zfs_onexit_t **)&zs->zss_data);

	return (0);
}