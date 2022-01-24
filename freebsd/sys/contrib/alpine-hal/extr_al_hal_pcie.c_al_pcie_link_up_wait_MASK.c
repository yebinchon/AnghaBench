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
struct al_pcie_port {int /*<<< orphan*/  port_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_PCIE_LINKUP_WAIT_INTERVAL ; 
 int AL_PCIE_LINKUP_WAIT_INTERVALS_PER_SEC ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (struct al_pcie_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct al_pcie_port *pcie_port, uint32_t timeout_ms)
{
	int wait_count = timeout_ms * AL_PCIE_LINKUP_WAIT_INTERVALS_PER_SEC;

	while (wait_count-- > 0)	{
		if (FUNC1(pcie_port, NULL)) {
			FUNC0("PCIe_%d: <<<<<<<<< Link up >>>>>>>>>\n", pcie_port->port_id);
			return 0;
		} else
			FUNC0("PCIe_%d: No link up, %d attempts remaining\n",
				pcie_port->port_id, wait_count);

		FUNC2(AL_PCIE_LINKUP_WAIT_INTERVAL);
	}
	FUNC0("PCIE_%d: link is not established in time\n",
				pcie_port->port_id);

	return ETIMEDOUT;
}