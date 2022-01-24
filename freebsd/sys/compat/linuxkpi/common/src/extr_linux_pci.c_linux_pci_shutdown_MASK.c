#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {TYPE_1__* pdrv; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct pci_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  curthread ; 
 struct pci_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct pci_dev *pdev;

	FUNC1(curthread);
	pdev = FUNC0(dev);
	if (pdev->pdrv->shutdown != NULL)
		pdev->pdrv->shutdown(pdev);
	return (0);
}