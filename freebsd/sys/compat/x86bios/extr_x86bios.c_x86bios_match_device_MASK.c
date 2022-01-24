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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,char*,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(uint32_t offset, device_t dev)
{
	uint8_t *p;
	uint16_t device, vendor;
	uint8_t class, progif, subclass;

	/* Does the shadow ROM contain BIOS POST code for x86? */
	p = FUNC7(offset);
	if (p == NULL)
		return (0);

	/* Does it contain PCI data structure? */
	p += FUNC1(*(uint16_t *)(p + 0x18));
	if (FUNC0(p, "PCIR", 4) != 0 ||
	    FUNC1(*(uint16_t *)(p + 0x0a)) < 0x18 || *(p + 0x14) != 0)
		return (0);

	/* Does it match the vendor, device, and classcode? */
	vendor = FUNC1(*(uint16_t *)(p + 0x04));
	device = FUNC1(*(uint16_t *)(p + 0x06));
	progif = *(p + 0x0d);
	subclass = *(p + 0x0e);
	class = *(p + 0x0f);
	if (vendor != FUNC6(dev) || device != FUNC3(dev) ||
	    class != FUNC2(dev) || subclass != FUNC5(dev) ||
	    progif != FUNC4(dev))
		return (0);

	return (1);
}