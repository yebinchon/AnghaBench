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
struct TYPE_6__ {scalar_t__ node_type; int /*<<< orphan*/  node_guid; } ;
struct TYPE_7__ {scalar_t__ description; } ;
struct TYPE_5__ {int /*<<< orphan*/  lid; TYPE_2__ node_info; TYPE_3__ node_desc; } ;
typedef  TYPE_1__ ib_node_record_t ;
typedef  TYPE_2__ ib_node_info_t ;
typedef  TYPE_3__ ib_node_desc_t ;

/* Variables and functions */
 scalar_t__ IB_NODE_TYPE_CA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  node_name_map ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(ib_node_record_t * node_record)
{
	ib_node_info_t *p_ni = &(node_record->node_info);
	ib_node_desc_t *p_nd = &(node_record->node_desc);
	char *name;

	if (p_ni->node_type == IB_NODE_TYPE_CA) {
		name = FUNC3(node_name_map,
					node_record->node_info.node_guid,
					(char *)p_nd->description);
		FUNC2("%6d  \"%s\"\n", FUNC0(node_record->lid), name);
		FUNC1(name);
	}
}