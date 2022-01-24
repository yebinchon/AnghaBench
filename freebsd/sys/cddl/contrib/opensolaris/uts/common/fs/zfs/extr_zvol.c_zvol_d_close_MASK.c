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
struct TYPE_3__ {int zv_flags; int zv_total_opens; int /*<<< orphan*/  zv_sync_cnt; } ;
typedef  TYPE_1__ zvol_state_t ;
struct thread {int dummy; } ;
struct cdev {TYPE_1__* si_drv2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FDSYNC ; 
 int FSYNC ; 
 int ZVOL_EXCL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfsdev_state_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	zvol_state_t *zv = dev->si_drv2;

	FUNC1(&zfsdev_state_lock);
	if (zv->zv_flags & ZVOL_EXCL) {
		FUNC0(zv->zv_total_opens == 1);
		zv->zv_flags &= ~ZVOL_EXCL;
	}

	/*
	 * If the open count is zero, this is a spurious close.
	 * That indicates a bug in the kernel / DDI framework.
	 */
	FUNC0(zv->zv_total_opens != 0);

	/*
	 * You may get multiple opens, but only one close.
	 */
	zv->zv_total_opens--;
	if (flags & (FSYNC | FDSYNC))
		zv->zv_sync_cnt--;

	if (zv->zv_total_opens == 0)
		FUNC3(zv);

	FUNC2(&zfsdev_state_lock);
	return (0);
}