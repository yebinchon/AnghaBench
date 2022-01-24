#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_13__ {int /*<<< orphan*/ * info; int /*<<< orphan*/ * ext_info; TYPE_5__* remoteport; TYPE_2__* node; } ;
typedef  TYPE_6__ ibnd_port_t ;
struct TYPE_12__ {int /*<<< orphan*/ * info; int /*<<< orphan*/ * ext_info; TYPE_4__* node; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_3__** ports; } ;
struct TYPE_10__ {int /*<<< orphan*/  info; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__** ports; } ;
struct TYPE_8__ {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FDR10 ; 
 int /*<<< orphan*/  IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F ; 
 int /*<<< orphan*/  IB_MLNX_EXT_PORT_LINK_SPEED_SUPPORTED_F ; 
 scalar_t__ IB_NODE_SWITCH ; 
 int /*<<< orphan*/  IB_PORT_CAPMASK_F ; 
 int /*<<< orphan*/  IB_PORT_CAP_HAS_EXT_SPEEDS ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_EXT_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_EXT_SUPPORTED_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_SPEED_SUPPORTED_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_WIDTH_ACTIVE_F ; 
 int /*<<< orphan*/  IB_PORT_LINK_WIDTH_SUPPORTED_F ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 

void FUNC6(char *width_msg, char *speed_msg, int msg_size, ibnd_port_t * port)
{
	char buf[64];
	uint32_t max_speed = 0;
	uint32_t cap_mask, rem_cap_mask, fdr10;
	uint8_t *info = NULL;

	uint32_t max_width = FUNC2(FUNC4(port->info, 0,
						   IB_PORT_LINK_WIDTH_SUPPORTED_F)
				     & FUNC4(port->remoteport->info, 0,
						     IB_PORT_LINK_WIDTH_SUPPORTED_F));
	if ((max_width & FUNC4(port->info, 0,
				       IB_PORT_LINK_WIDTH_ACTIVE_F)) == 0)
		// we are not at the max supported width
		// print what we could be at.
		FUNC5(width_msg, msg_size, "Could be %s",
			 FUNC3(IB_PORT_LINK_WIDTH_ACTIVE_F,
				      buf, 64, &max_width));

	if (port->node->type == IB_NODE_SWITCH) {
		if (port->node->ports[0])
			info = (uint8_t *)&port->node->ports[0]->info;
	}
	else
		info = (uint8_t *)&port->info;

	if (info)
		cap_mask = FUNC4(info, 0, IB_PORT_CAPMASK_F);
	else
		cap_mask = 0;

	info = NULL;
	if (port->remoteport->node->type == IB_NODE_SWITCH) {
		if (port->remoteport->node->ports[0])
			info = (uint8_t *)&port->remoteport->node->ports[0]->info;
	} else
		info = (uint8_t *)&port->remoteport->info;

	if (info)
		rem_cap_mask = FUNC4(info, 0, IB_PORT_CAPMASK_F);
	else
		rem_cap_mask = 0;
	if (cap_mask & FUNC0(IB_PORT_CAP_HAS_EXT_SPEEDS) &&
	    rem_cap_mask & FUNC0(IB_PORT_CAP_HAS_EXT_SPEEDS))
		goto check_ext_speed;
check_fdr10_supp:
	fdr10 = (FUNC4(port->ext_info, 0,
			       IB_MLNX_EXT_PORT_LINK_SPEED_SUPPORTED_F) & FDR10)
		&& (FUNC4(port->remoteport->ext_info, 0,
				  IB_MLNX_EXT_PORT_LINK_SPEED_SUPPORTED_F) & FDR10);
	if (fdr10)
		goto check_fdr10_active;

	max_speed = FUNC1(FUNC4(port->info, 0,
					  IB_PORT_LINK_SPEED_SUPPORTED_F)
			    & FUNC4(port->remoteport->info, 0,
					    IB_PORT_LINK_SPEED_SUPPORTED_F));
	if ((max_speed & FUNC4(port->info, 0,
				       IB_PORT_LINK_SPEED_ACTIVE_F)) == 0)
		// we are not at the max supported speed
		// print what we could be at.
		FUNC5(speed_msg, msg_size, "Could be %s",
			 FUNC3(IB_PORT_LINK_SPEED_ACTIVE_F,
				      buf, 64, &max_speed));
	return;

check_ext_speed:
	if (FUNC4(port->info, 0,
			  IB_PORT_LINK_SPEED_EXT_SUPPORTED_F) == 0 ||
	    FUNC4(port->remoteport->info, 0,
			  IB_PORT_LINK_SPEED_EXT_SUPPORTED_F) == 0)
		goto check_fdr10_supp;
	max_speed = FUNC1(FUNC4(port->info, 0,
					  IB_PORT_LINK_SPEED_EXT_SUPPORTED_F)
			    & FUNC4(port->remoteport->info, 0,
					    IB_PORT_LINK_SPEED_EXT_SUPPORTED_F));
	if ((max_speed & FUNC4(port->info, 0,
				       IB_PORT_LINK_SPEED_EXT_ACTIVE_F)) == 0)
		// we are not at the max supported extended speed
		// print what we could be at.
		FUNC5(speed_msg, msg_size, "Could be %s",
			 FUNC3(IB_PORT_LINK_SPEED_EXT_ACTIVE_F,
				      buf, 64, &max_speed));
	return;

check_fdr10_active:
	if ((FUNC4(port->ext_info, 0,
			   IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F) & FDR10) == 0) {
		/* Special case QDR to try to avoid confusion with FDR10 */
		if (FUNC4(port->info, 0, IB_PORT_LINK_SPEED_ACTIVE_F) == 4)	/* QDR (10.0 Gbps) */
			FUNC5(speed_msg, msg_size,
				 "Could be FDR10 (Found link at QDR but expected speed is FDR10)");
		else
			FUNC5(speed_msg, msg_size, "Could be FDR10");
	}
}