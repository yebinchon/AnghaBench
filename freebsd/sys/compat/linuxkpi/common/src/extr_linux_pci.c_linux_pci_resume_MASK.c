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
struct pci_dev {int /*<<< orphan*/  dev; TYPE_2__* pdrv; } ;
struct dev_pm_ops {int (* resume ) (int /*<<< orphan*/ *) ;int (* resume_early ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {struct dev_pm_ops* pm; } ;
struct TYPE_4__ {int (* resume ) (struct pci_dev*) ;TYPE_1__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  curthread ; 
 struct pci_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	const struct dev_pm_ops *pmops;
	struct pci_dev *pdev;
	int error;

	error = 0;
	FUNC1(curthread);
	pdev = FUNC0(dev);
	pmops = pdev->pdrv->driver.pm;

	if (pdev->pdrv->resume != NULL)
		error = -pdev->pdrv->resume(pdev);
	else if (pmops != NULL && pmops->resume != NULL) {
		if (pmops->resume_early != NULL)
			error = -pmops->resume_early(&pdev->dev);
		if (error == 0 && pmops->resume != NULL)
			error = -pmops->resume(&pdev->dev);
	}
	return (error);
}