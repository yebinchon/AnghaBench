#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_driver {int isdrm; } ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct pci_driver*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 

int
FUNC2(struct pci_driver *pdrv)
{
	devclass_t dc;

	dc = FUNC1("pci");
	if (dc == NULL)
		return (-ENXIO);
	pdrv->isdrm = false;
	return (FUNC0(pdrv, dc));
}