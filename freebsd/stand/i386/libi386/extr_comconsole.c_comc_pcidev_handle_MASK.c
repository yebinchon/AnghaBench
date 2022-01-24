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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIOSPCI_32BITS ; 
 int CMD_ERROR ; 
 int CMD_OK ; 
 int /*<<< orphan*/  EV_VOLATILE ; 
 int PCIM_BAR_IO_BASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  comc_curspeed ; 
 int comc_locator ; 
 int /*<<< orphan*/  comc_port_set ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  env_nounset ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(uint32_t locator)
{
#ifdef EFI
	/* We don't support PCI in EFI yet */
	return (CMD_ERROR);
#else
	char intbuf[64];
	uint32_t port;

	if (FUNC1(locator & 0xffff,
	    (locator & 0xff0000) >> 16, BIOSPCI_32BITS, &port) == -1) {
		FUNC4("Cannot read bar at 0x%x\n", locator);
		return (CMD_ERROR);
	}

	/* 
	 * biospci_read_config() sets port == 0xffffffff if the pcidev
	 * isn't found on the bus.  Check for 0xffffffff and return to not
	 * panic in BTX.
	 */
	if (port == 0xffffffff) {
		FUNC4("Cannot find specified pcidev\n");
		return (CMD_ERROR);
	}
	if (!FUNC0(port)) {
		FUNC4("Memory bar at 0x%x\n", locator);
		return (CMD_ERROR);
	}
        port &= PCIM_BAR_IO_BASE;

	FUNC5(intbuf, "%d", port);
	FUNC6("comconsole_port");
	FUNC3("comconsole_port", EV_VOLATILE, intbuf,
		   comc_port_set, env_nounset);

	FUNC2(comc_curspeed, port);
	comc_locator = locator;

	return (CMD_OK);
#endif
}