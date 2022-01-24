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
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_GSI_PORT_VL_XMIT_TIME_CONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mad_dump_perfcounters_vl_xmit_time_cong ; 
 scalar_t__ reset ; 
 scalar_t__ reset_only ; 

__attribute__((used)) static void FUNC1(ib_portid_t * portid, int port, int mask)
{
	FUNC0(portid, port, mask, !reset_only, (reset_only || reset),
		    "PortVLXmitTimeCong", IB_GSI_PORT_VL_XMIT_TIME_CONG,
		    mad_dump_perfcounters_vl_xmit_time_cong);
}