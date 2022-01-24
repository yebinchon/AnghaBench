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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_GSI_PORT_COUNTERS ; 
 int /*<<< orphan*/  IB_GSI_PORT_RCV_ERROR_DETAILS ; 
 int /*<<< orphan*/  IB_GSI_PORT_XMIT_DISCARD_DETAILS ; 
 int IB_PM_EXT_WIDTH_NOIETF_SUP ; 
 int IB_PM_EXT_WIDTH_SUPPORTED ; 
 int IB_PM_PC_XMIT_WAIT_SUP ; 
 scalar_t__ clear_counts ; 
 scalar_t__ clear_errors ; 
 scalar_t__ details ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  ibd_timeout ; 
 int /*<<< orphan*/  ibmad_port ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(ib_portid_t * portid, uint16_t cap_mask,
		       char *node_name, int port)
{
	uint8_t pc[1024] = { 0 };
	/* bits defined in Table 228 PortCounters CounterSelect and
	 * CounterSelect2
	 */
	uint32_t mask = 0;

	if (clear_errors) {
		mask |= 0xFFF;
		if (cap_mask & IB_PM_PC_XMIT_WAIT_SUP)
			mask |= 0x10000;
	}
	if (clear_counts)
		mask |= 0xF000;

	if (mask)
		if (!FUNC2(pc, portid, port, mask, ibd_timeout,
					   IB_GSI_PORT_COUNTERS, ibmad_port))
			FUNC0(stderr, "Failed to reset errors %s port %d\n", node_name,
				port);

	if (clear_errors && details) {
		FUNC1(pc, 0, 1024);
		FUNC2(pc, portid, port, 0xf, ibd_timeout,
				      IB_GSI_PORT_XMIT_DISCARD_DETAILS,
				      ibmad_port);
		FUNC1(pc, 0, 1024);
		FUNC2(pc, portid, port, 0x3f, ibd_timeout,
				      IB_GSI_PORT_RCV_ERROR_DETAILS,
				      ibmad_port);
	}

	if (clear_counts &&
	    (cap_mask &
	     (IB_PM_EXT_WIDTH_SUPPORTED | IB_PM_EXT_WIDTH_NOIETF_SUP))) {
		if (cap_mask & IB_PM_EXT_WIDTH_SUPPORTED)
			mask = 0xFF;
		else
			mask = 0x0F;

		if (!FUNC4(pc, portid, port, mask, ibd_timeout,
		    ibmad_port))
			FUNC0(stderr, "Failed to reset extended data counters %s, "
				"%s port %d\n", node_name, FUNC3(portid),
				port);
	}
}