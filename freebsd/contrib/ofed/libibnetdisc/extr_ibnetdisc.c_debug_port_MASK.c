#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * info; int /*<<< orphan*/  base_lid; int /*<<< orphan*/  portnum; TYPE_2__* node; int /*<<< orphan*/ * ext_info; } ;
typedef  TYPE_3__ ibnd_port_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__** ports; } ;
struct TYPE_5__ {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FDR10 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F ; 
 scalar_t__ IB_NODE_SWITCH ; 
 int /*<<< orphan*/  IB_PORT_CAPMASK_F ; 
 int /*<<< orphan*/  IB_PORT_CAP_HAS_EXT_SPEEDS ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_EXT_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_WIDTH_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_PHYS_STATE_F ; 
 int /*<<< orphan*/  IB_PORT_STATE_F ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(ib_portid_t * portid, ibnd_port_t * port)
{
	char width[64], speed[64];
	int iwidth;
	int ispeed, fdr10, espeed;
	uint8_t *info;
	uint32_t cap_mask;

	iwidth = FUNC3(port->info, 0, IB_PORT_LINK_WIDTH_ACTIVE_F);
	ispeed = FUNC3(port->info, 0, IB_PORT_LINK_SPEED_ACTIVE_F);
	fdr10 = FUNC3(port->ext_info, 0,
			      IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F);

	if (port->node->type == IB_NODE_SWITCH)
		info = (uint8_t *)&port->node->ports[0]->info;
	else
		info = (uint8_t *)&port->info;
	cap_mask = FUNC3(info, 0, IB_PORT_CAPMASK_F);
	if (cap_mask & FUNC0(IB_PORT_CAP_HAS_EXT_SPEEDS))
		espeed = FUNC3(port->info, 0, IB_PORT_LINK_SPEED_EXT_ACTIVE_F);
	else
		espeed = 0;
	FUNC1
	    ("portid %s portnum %d: base lid %d state %d physstate %d %s %s %s %s\n",
	     FUNC4(portid), port->portnum, port->base_lid,
	     FUNC3(port->info, 0, IB_PORT_STATE_F),
	     FUNC3(port->info, 0, IB_PORT_PHYS_STATE_F),
	     FUNC2(IB_PORT_LINK_WIDTH_ACTIVE_F, width, 64, &iwidth),
	     FUNC2(IB_PORT_LINK_SPEED_ACTIVE_F, speed, 64, &ispeed),
	     (fdr10 & FDR10) ? "FDR10"  : "",
	     FUNC2(IB_PORT_LINK_SPEED_EXT_ACTIVE_F, speed, 64, &espeed));
}