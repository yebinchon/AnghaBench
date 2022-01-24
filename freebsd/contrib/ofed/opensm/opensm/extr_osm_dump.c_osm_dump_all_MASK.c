#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ qos; scalar_t__ scatter_ports; } ;
struct TYPE_12__ {int /*<<< orphan*/  node_guid_tbl; int /*<<< orphan*/  port_guid_tbl; TYPE_1__ opt; int /*<<< orphan*/  sw_guid_tbl; } ;
struct TYPE_13__ {int /*<<< orphan*/  log; TYPE_3__ subn; TYPE_2__* routing_engine_used; } ;
typedef  TYPE_4__ osm_opensm_t ;
struct TYPE_11__ {scalar_t__ update_sl2vl; } ;

/* Variables and functions */
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ROUTING ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  dump_lid_matrix ; 
 int /*<<< orphan*/  dump_mcast_routes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  dump_sl2vl_tbl ; 
 int /*<<< orphan*/  dump_topology_node ; 
 int /*<<< orphan*/  dump_ucast_lfts ; 
 int /*<<< orphan*/  dump_ucast_path_distribution ; 
 int /*<<< orphan*/  dump_ucast_routes ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC5(osm_opensm_t * osm)
{
	if (FUNC0(&osm->log, OSM_LOG_ROUTING)) {
		/* unicast routes */
		FUNC2(osm, "opensm-lid-matrix.dump",
				      &osm->subn.sw_guid_tbl, dump_lid_matrix,
				      osm);
		FUNC2(osm, "opensm-lfts.dump",
				      &osm->subn.sw_guid_tbl, dump_ucast_lfts,
				      osm);
		if (FUNC0(&osm->log, OSM_LOG_DEBUG))
			FUNC1(stdout, &osm->subn.sw_guid_tbl,
				  dump_ucast_path_distribution, osm);

		/* An attempt to get osm_switch_recommend_path to report the
		   same routes that a sweep would assign. */
		if (osm->subn.opt.scatter_ports)
			FUNC4(osm->subn.opt.scatter_ports);

		FUNC2(osm, "opensm.fdbs",
				      &osm->subn.sw_guid_tbl,
				      dump_ucast_routes, osm);
		/* multicast routes */
		FUNC2(osm, "opensm.mcfdbs",
				      &osm->subn.sw_guid_tbl,
				      dump_mcast_routes, osm);
		/* SL2VL tables */
		if (osm->subn.opt.qos ||
		    (osm->routing_engine_used &&
		     osm->routing_engine_used->update_sl2vl))
			FUNC2(osm, "opensm-sl2vl.dump",
					      &osm->subn.port_guid_tbl,
					      dump_sl2vl_tbl, osm);
	}
	FUNC2(osm, "opensm-subnet.lst",
			      &osm->subn.node_guid_tbl, dump_topology_node,
			      osm);
	if (FUNC0(&osm->log, OSM_LOG_VERBOSE))
		FUNC3(osm, stdout);
}