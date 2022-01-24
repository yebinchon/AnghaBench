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
struct pci_driver {int /*<<< orphan*/  name; int /*<<< orphan*/  bsddriver; } ;
struct pci_device_id {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_driver* FUNC2 (int /*<<< orphan*/ ,struct pci_device_id const**) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const struct pci_device_id *id;
	struct pci_driver *pdrv;

	if ((pdrv = FUNC2(dev, &id)) == NULL)
		return (ENXIO);
	if (FUNC0(dev) != &pdrv->bsddriver)
		return (ENXIO);
	FUNC1(dev, pdrv->name);
	return (0);
}