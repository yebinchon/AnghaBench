#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_9__ {int /*<<< orphan*/ * devdata; } ;
typedef  TYPE_1__ dev_info_t ;
typedef  int /*<<< orphan*/  EFI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EFI_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  EFI_SUCCESS ; 
 int /*<<< orphan*/  EFI_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  devices ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  vdev_read ; 

__attribute__((used)) static EFI_STATUS
FUNC6(dev_info_t *dev)
{
	spa_t *spa;
	dev_info_t *tdev;

	/* ZFS consumes the dev on success so we need a copy. */
	tdev = FUNC3(sizeof(*dev));
	if (tdev == NULL) {
		FUNC0("Failed to allocate tdev\n");
		return (EFI_OUT_OF_RESOURCES);
	}
	FUNC4(tdev, dev, sizeof(*dev));

	if (FUNC5(vdev_read, tdev, &spa) != 0) {
		FUNC2(tdev);
		return (EFI_UNSUPPORTED);
	}

	dev->devdata = spa;
	FUNC1(&devices, dev);

	return (EFI_SUCCESS);
}