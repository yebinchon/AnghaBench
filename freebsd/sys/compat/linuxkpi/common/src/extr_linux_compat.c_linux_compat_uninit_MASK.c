#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 TYPE_2__ linux_class_misc ; 
 int /*<<< orphan*/  linux_class_root ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ linux_root_device ; 
 int /*<<< orphan*/  linux_vma_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmmaplock ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	FUNC0(&linux_class_root);
	FUNC0(&linux_root_device.kobj);
	FUNC0(&linux_class_misc.kobj);

	FUNC1(&vmmaplock);
	FUNC3(&pci_lock);
	FUNC2(&linux_vma_lock);
}