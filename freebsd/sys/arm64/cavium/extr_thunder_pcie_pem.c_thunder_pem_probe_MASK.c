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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  THUNDER_PEM_DESC ; 
 scalar_t__ THUNDER_PEM_DEVICE_ID ; 
 scalar_t__ THUNDER_PEM_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	uint16_t pci_vendor_id;
	uint16_t pci_device_id;

	pci_vendor_id = FUNC2(dev);
	pci_device_id = FUNC1(dev);

	if ((pci_vendor_id == THUNDER_PEM_VENDOR_ID) &&
	    (pci_device_id == THUNDER_PEM_DEVICE_ID)) {
		FUNC0(dev, THUNDER_PEM_DESC);
		return (0);
	}

	return (ENXIO);
}