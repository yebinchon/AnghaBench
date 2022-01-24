#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct sa_query_result {unsigned int result_cnt; int /*<<< orphan*/  p_result_madw; } ;
struct query_params {int dummy; } ;
struct TYPE_12__ {scalar_t__ description; } ;
struct TYPE_11__ {scalar_t__ port_guid; int /*<<< orphan*/  node_guid; } ;
struct TYPE_15__ {TYPE_3__ node_desc; TYPE_2__ node_info; } ;
typedef  TYPE_6__ ib_node_record_t ;
struct TYPE_10__ {scalar_t__ interface_id; } ;
struct TYPE_14__ {int /*<<< orphan*/  raw; TYPE_1__ unicast; } ;
struct TYPE_13__ {int /*<<< orphan*/  raw; } ;
struct TYPE_16__ {int scope_state; int proxy_join; TYPE_5__ port_gid; int /*<<< orphan*/  mlid; TYPE_4__ mgid; } ;
typedef  TYPE_7__ ib_member_rec_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  node_name_map ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ requested_name ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(ib_member_rec_t *p_mcmr,
					 struct sa_query_result *nr_result,
					 struct query_params *params)
{
	char gid_str[INET6_ADDRSTRLEN];
	char gid_str2[INET6_ADDRSTRLEN];
	uint16_t mlid = FUNC0(p_mcmr->mlid);
	unsigned i = 0;
	char *node_name = FUNC6("<unknown>");

	/* go through the node records searching for a port guid which matches
	 * this port gid interface id.
	 * This gives us a node name to print, if available.
	 */
	for (i = 0; i < nr_result->result_cnt; i++) {
		ib_node_record_t *nr = FUNC5(nr_result->p_result_madw, i);
		if (nr->node_info.port_guid ==
		    p_mcmr->port_gid.unicast.interface_id) {
			if(node_name != NULL)
				FUNC1(node_name);
			node_name = FUNC4(node_name_map,
						nr->node_info.node_guid,
						(char *)nr->node_desc.description);
			break;
		}
	}

	if (requested_name) {
		if (FUNC7(requested_name, NULL, 0) == mlid)
			FUNC3("\t\tPortGid.................%s (%s)\n",
			       FUNC2(AF_INET6, p_mcmr->port_gid.raw,
					 gid_str, sizeof gid_str), node_name);
	} else {
		FUNC3("MCMemberRecord member dump:\n"
		       "\t\tMGID....................%s\n"
		       "\t\tMlid....................0x%X\n"
		       "\t\tPortGid.................%s\n"
		       "\t\tScopeState..............0x%X\n"
		       "\t\tProxyJoin...............0x%X\n"
		       "\t\tNodeDescription.........%s\n",
		       FUNC2(AF_INET6, p_mcmr->mgid.raw, gid_str,
				 sizeof gid_str),
		       FUNC0(p_mcmr->mlid),
		       FUNC2(AF_INET6, p_mcmr->port_gid.raw,
				 gid_str2, sizeof gid_str2),
		       p_mcmr->scope_state, p_mcmr->proxy_join, node_name);
	}
	FUNC1(node_name);
}