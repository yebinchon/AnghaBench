#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_18__ ;

/* Type definitions */
struct TYPE_24__ {int ch_found; int /*<<< orphan*/  info; struct TYPE_24__* next; TYPE_1__* chassis; struct TYPE_24__* type_next; } ;
typedef  TYPE_2__ ibnd_node_t ;
struct TYPE_25__ {TYPE_4__* chassis; TYPE_2__* nodes; TYPE_2__* switches; } ;
typedef  TYPE_3__ ibnd_fabric_t ;
struct TYPE_26__ {int nodecount; int chassisnum; struct TYPE_26__* next; } ;
typedef  TYPE_4__ ibnd_chassis_t ;
struct TYPE_27__ {TYPE_4__* first_chassis; TYPE_18__* current_chassis; int /*<<< orphan*/ * last_chassis; } ;
typedef  TYPE_5__ chassis_scan_t ;
struct TYPE_23__ {scalar_t__ chassisnum; } ;
struct TYPE_22__ {int chassisnum; int nodecount; int /*<<< orphan*/  chassisguid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_NODE_SYSTEM_GUID_F ; 
 int /*<<< orphan*/  IB_NODE_VENDORID_F ; 
 int MLX_VENDOR_ID ; 
 int VTR_VENDOR_ID ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_18__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(ibnd_fabric_t * fabric)
{
	ibnd_node_t *node;
	int chassisnum = 0;
	ibnd_chassis_t *chassis;
	ibnd_chassis_t *ch, *ch_next;
	chassis_scan_t chassis_scan;
	int vendor_id;

	chassis_scan.first_chassis = NULL;
	chassis_scan.current_chassis = NULL;
	chassis_scan.last_chassis = NULL;

	/* first pass on switches and build for every Voltaire node */
	/* an appropriate chassis record (slotnum and position) */
	/* according to internal connectivity */
	/* not very efficient but clear code so... */
	for (node = fabric->switches; node; node = node->type_next) {

		vendor_id = FUNC10(node->info, 0,IB_NODE_VENDORID_F);

		if (vendor_id == VTR_VENDOR_ID
		    && FUNC4(node))
			goto cleanup;
		else if (vendor_id == MLX_VENDOR_ID
			&& FUNC3(node))
			goto cleanup;

	}

	/* separate every Voltaire chassis from each other and build linked list of them */
	/* algorithm: catch spine and find all surrounding nodes */
	for (node = fabric->switches; node; node = node->type_next) {
		if (FUNC10(node->info, 0,
				  IB_NODE_VENDORID_F) != VTR_VENDOR_ID)
			continue;
		if (!node->ch_found
		    || (node->chassis && node->chassis->chassisnum)
		    || !FUNC9(node))
			continue;
		if (FUNC0(&chassis_scan))
			goto cleanup;
		chassis_scan.current_chassis->chassisnum = ++chassisnum;
		if (FUNC2(node, chassis_scan.current_chassis))
			goto cleanup;
	}

	/* now make pass on nodes for chassis which are not Voltaire */
	/* grouped by common SystemImageGUID */
	for (node = fabric->nodes; node; node = node->next) {
		if (FUNC10(node->info, 0,
				  IB_NODE_VENDORID_F) == VTR_VENDOR_ID)
			continue;
		if (FUNC11(node->info, 0, IB_NODE_SYSTEM_GUID_F)) {
			chassis = FUNC5(fabric, node);
			if (chassis)
				chassis->nodecount++;
			else {
				/* Possible new chassis */
				if (FUNC0(&chassis_scan))
					goto cleanup;
				chassis_scan.current_chassis->chassisguid =
				    FUNC7(node);
				chassis_scan.current_chassis->nodecount = 1;
				if (!fabric->chassis)
					fabric->chassis = chassis_scan.first_chassis;
			}
		}
	}

	/* now, make another pass to see which nodes are part of chassis */
	/* (defined as chassis->nodecount > 1) */
	for (node = fabric->nodes; node; node = node->next) {

		vendor_id = FUNC10(node->info, 0,IB_NODE_VENDORID_F);

		if (vendor_id == VTR_VENDOR_ID)
			continue;
		if (FUNC11(node->info, 0, IB_NODE_SYSTEM_GUID_F)) {
			chassis = FUNC5(fabric, node);
			if (chassis && chassis->nodecount > 1) {
				if (!chassis->chassisnum)
					chassis->chassisnum = ++chassisnum;
				if (!node->ch_found) {
					node->ch_found = 1;
					FUNC1(chassis, node);
				}
				else if (vendor_id == MLX_VENDOR_ID){
					FUNC8(node, chassis);
				}
			}
		}
	}

	fabric->chassis = chassis_scan.first_chassis;
	return 0;

cleanup:
	ch = chassis_scan.first_chassis;
	while (ch) {
		ch_next = ch->next;
		FUNC6(ch);
		ch = ch_next;
	}
	fabric->chassis = NULL;
	return -1;
}