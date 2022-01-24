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
struct TYPE_8__ {int /*<<< orphan*/  vic_prev_indirect_vdev; } ;
struct TYPE_7__ {TYPE_2__ vdev_indirect_config; int /*<<< orphan*/ * v_read; int /*<<< orphan*/  v_state; int /*<<< orphan*/  v_guid; int /*<<< orphan*/  v_children; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_read_t ;
typedef  TYPE_2__ vdev_indirect_config_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  VDEV_STATE_OFFLINE ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  v_alllink ; 
 int /*<<< orphan*/  zfs_vdevs ; 

__attribute__((used)) static vdev_t *
FUNC4(uint64_t guid, vdev_read_t *_read)
{
	vdev_t *vdev;
	vdev_indirect_config_t *vic;

	vdev = FUNC2(sizeof(vdev_t));
	FUNC3(vdev, 0, sizeof(vdev_t));
	FUNC0(&vdev->v_children);
	vdev->v_guid = guid;
	vdev->v_state = VDEV_STATE_OFFLINE;
	vdev->v_read = _read;

	vic = &vdev->vdev_indirect_config;
	vic->vic_prev_indirect_vdev = UINT64_MAX;
	FUNC1(&zfs_vdevs, vdev, v_alllink);

	return (vdev);
}