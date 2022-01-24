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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IB_GSI_PORT_EXT_SPEEDS_COUNTERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibd_timeout ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mad_dump_port_ext_speeds_counters ; 
 int /*<<< orphan*/  mad_dump_port_ext_speeds_counters_rsfec_active ; 
 int /*<<< orphan*/  pc ; 
 scalar_t__ reset ; 
 scalar_t__ reset_only ; 
 int /*<<< orphan*/  srcport ; 

__attribute__((used)) static void FUNC4(ib_portid_t * portid, int port,
				  uint64_t ext_mask, uint16_t cap_mask)
{
	int mask = ext_mask;

	if (!reset_only) {
		if (FUNC3(portid, port, cap_mask))
			FUNC1(portid, port, mask, 1, 0,
				    "PortExtendedSpeedsCounters with RS-FEC Active",
				    IB_GSI_PORT_EXT_SPEEDS_COUNTERS,
				    mad_dump_port_ext_speeds_counters_rsfec_active);
		else
			FUNC1(portid, port, mask, 1, 0,
			    "PortExtendedSpeedsCounters",
			    IB_GSI_PORT_EXT_SPEEDS_COUNTERS,
			    mad_dump_port_ext_speeds_counters);
	}

	if ((reset_only || reset) &&
	    !FUNC2(pc, portid, port, ext_mask, ibd_timeout, srcport))
		FUNC0("cannot reset PortExtendedSpeedsCounters");
}