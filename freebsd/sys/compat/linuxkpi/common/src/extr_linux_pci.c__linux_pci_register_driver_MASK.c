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
struct TYPE_2__ {int size; int /*<<< orphan*/  methods; int /*<<< orphan*/  name; } ;
struct pci_driver {int /*<<< orphan*/  bsdclass; TYPE_1__ bsddriver; int /*<<< orphan*/  name; int /*<<< orphan*/  links; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_PASS_DEFAULT ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_drivers ; 
 int /*<<< orphan*/  pci_lock ; 
 int /*<<< orphan*/  pci_methods ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct pci_driver *pdrv, devclass_t dc)
{
	int error;

	FUNC1(curthread);
	FUNC5(&pci_lock);
	FUNC2(&pdrv->links, &pci_drivers);
	FUNC6(&pci_lock);
	pdrv->bsddriver.name = pdrv->name;
	pdrv->bsddriver.methods = pci_methods;
	pdrv->bsddriver.size = sizeof(struct pci_dev);

	FUNC3(&Giant);
	error = FUNC0(dc, &pdrv->bsddriver,
	    BUS_PASS_DEFAULT, &pdrv->bsdclass);
	FUNC4(&Giant);
	return (-error);
}