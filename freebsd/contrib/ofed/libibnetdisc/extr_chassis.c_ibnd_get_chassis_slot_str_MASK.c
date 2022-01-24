#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t ch_slot; int ch_slotnum; int ch_anafanum; int /*<<< orphan*/  chassis; int /*<<< orphan*/  info; } ;
typedef  TYPE_1__ ibnd_node_t ;

/* Variables and functions */
 char** ChassisSlotTypeStr ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IB_NODE_VENDORID_F ; 
 int MLX_VENDOR_ID ; 
 size_t SRBD_CS ; 
 size_t UNRESOLVED_CS ; 
 int VTR_VENDOR_ID ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,int,int) ; 

char *FUNC3(ibnd_node_t * node, char *str, size_t size)
{
	int vendor_id;

	if (!node) {
		FUNC0("node parameter NULL\n");
		return NULL;
	}

	/* Currently, only if Voltaire or Mellanox chassis */
	vendor_id = FUNC1(node->info, 0,IB_NODE_VENDORID_F);

	if ((vendor_id != VTR_VENDOR_ID) && (vendor_id != MLX_VENDOR_ID))
		return NULL;
	if (!node->chassis)
		return NULL;
	if (node->ch_slot == UNRESOLVED_CS || node->ch_slot > SRBD_CS)
		return NULL;
	if (!str)
		return NULL;
	FUNC2(str, size, "%s %d Chip %d", ChassisSlotTypeStr[node->ch_slot],
		 node->ch_slotnum, node->ch_anafanum);
	return str;
}