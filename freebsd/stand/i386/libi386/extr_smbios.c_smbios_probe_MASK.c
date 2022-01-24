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
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_2__ {int probed; int ver; int major; int minor; void* product; void* maker; void* bios_vendor; int /*<<< orphan*/ * addr; void* count; void* length; } ;

/* Variables and functions */
 int /*<<< orphan*/ * const FUNC0 (uintptr_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 uintptr_t FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SMBIOS_LENGTH ; 
 uintptr_t SMBIOS_START ; 
 TYPE_1__ smbios ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const caddr_t addr)
{
	caddr_t		saddr, info;
	uintptr_t	paddr;

	if (smbios.probed)
		return;
	smbios.probed = 1;

	/* Search signatures and validate checksums. */
	saddr = FUNC6(addr ? addr : FUNC0(SMBIOS_START),
	    SMBIOS_LENGTH);
	if (saddr == NULL)
		return;

	smbios.length = FUNC1(saddr, 0x16);	/* Structure Table Length */
	paddr = FUNC2(saddr, 0x18);		/* Structure Table Address */
	smbios.count = FUNC1(saddr, 0x1c);	/* No of SMBIOS Structures */
	smbios.ver = FUNC3(saddr, 0x1e);		/* SMBIOS BCD Revision */

	if (smbios.ver != 0) {
		smbios.major = smbios.ver >> 4;
		smbios.minor = smbios.ver & 0x0f;
		if (smbios.major > 9 || smbios.minor > 9)
			smbios.ver = 0;
	}
	if (smbios.ver == 0) {
		smbios.major = FUNC3(saddr, 0x06);/* SMBIOS Major Version */
		smbios.minor = FUNC3(saddr, 0x07);/* SMBIOS Minor Version */
	}
	smbios.ver = (smbios.major << 8) | smbios.minor;
	smbios.addr = FUNC0(paddr);

	/* Get system information from SMBIOS */
	info = FUNC4(0x00);
	if (info != NULL) {
		smbios.bios_vendor = FUNC5(info, 0x04);
	}
	info = FUNC4(0x01);
	if (info != NULL) {
		smbios.maker = FUNC5(info, 0x04);
		smbios.product = FUNC5(info, 0x05);
	}
}