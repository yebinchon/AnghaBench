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
typedef  int uint32_t ;
struct TYPE_13__ {int sm_priority; int sweep_interval; } ;
struct TYPE_14__ {int sweeping_enabled; int ignore_existing_lfts; int subnet_initialization_error; int in_sweep_hop_0; int first_time_master_sweep; int coming_out_of_standby; TYPE_4__ opt; int /*<<< orphan*/  sm_state; } ;
struct TYPE_12__ {scalar_t__ sa_mads_ignored; scalar_t__ sa_mads_rcvd_unknown; scalar_t__ sa_mads_sent; scalar_t__ sa_mads_rcvd; scalar_t__ sa_mads_outstanding; scalar_t__ qp0_mads_rcvd_unknown; scalar_t__ qp0_unicasts_sent; scalar_t__ qp0_mads_sent; scalar_t__ qp0_mads_rcvd; scalar_t__ qp0_mads_outstanding_on_wire; scalar_t__ qp0_mads_outstanding; } ;
struct TYPE_10__ {int /*<<< orphan*/  state; } ;
struct TYPE_15__ {char* osm_version; int /*<<< orphan*/  lock; TYPE_5__ subn; TYPE_3__ stats; int /*<<< orphan*/  perfmgr; int /*<<< orphan*/  plugin_list; TYPE_2__* routing_engine_used; TYPE_1__ sa; } ;
typedef  TYPE_6__ osm_opensm_t ;
struct TYPE_16__ {char* plugin_name; } ;
typedef  TYPE_7__ osm_epi_plugin_t ;
typedef  int /*<<< orphan*/  cl_list_item_t ;
struct TYPE_11__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  OSM_ROUTING_ENGINE_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(osm_opensm_t * p_osm, FILE * out)
{
	cl_list_item_t *item;

	if (out) {
		const char *re_str;

		FUNC0(&p_osm->lock);
		FUNC6(out, "   OpenSM Version       : %s\n", p_osm->osm_version);
		FUNC6(out, "   SM State             : %s\n",
			FUNC11(p_osm->subn.sm_state));
		FUNC6(out, "   SM Priority          : %d\n",
			p_osm->subn.opt.sm_priority);
		FUNC6(out, "   SA State             : %s\n",
			FUNC10(p_osm->sa.state));

		re_str = p_osm->routing_engine_used ?
			FUNC9(p_osm->routing_engine_used->type) :
			FUNC9(OSM_ROUTING_ENGINE_TYPE_NONE);
		FUNC6(out, "   Routing Engine       : %s\n", re_str);

		FUNC6(out, "   Loaded event plugins :");
		if (FUNC3(&p_osm->plugin_list) ==
			FUNC2(&p_osm->plugin_list)) {
			FUNC6(out, " <none>");
		}
		for (item = FUNC3(&p_osm->plugin_list);
		     item != FUNC2(&p_osm->plugin_list);
		     item = FUNC4(item))
			FUNC6(out, " %s",
				((osm_epi_plugin_t *)item)->plugin_name);
		FUNC6(out, "\n");

#ifdef ENABLE_OSM_PERF_MGR
		fprintf(out, "\n   PerfMgr state/sweep state : %s/%s\n",
			osm_perfmgr_get_state_str(&p_osm->perfmgr),
			osm_perfmgr_get_sweep_state_str(&p_osm->perfmgr));
#endif
		FUNC6(out, "\n   MAD stats\n"
			"   ---------\n"
			"   QP0 MADs outstanding           : %u\n"
			"   QP0 MADs outstanding (on wire) : %u\n"
			"   QP0 MADs rcvd                  : %u\n"
			"   QP0 MADs sent                  : %u\n"
			"   QP0 unicasts sent              : %u\n"
			"   QP0 unknown MADs rcvd          : %u\n"
			"   SA MADs outstanding            : %u\n"
			"   SA MADs rcvd                   : %u\n"
			"   SA MADs sent                   : %u\n"
			"   SA unknown MADs rcvd           : %u\n"
			"   SA MADs ignored                : %u\n",
			(uint32_t)p_osm->stats.qp0_mads_outstanding,
			(uint32_t)p_osm->stats.qp0_mads_outstanding_on_wire,
			(uint32_t)p_osm->stats.qp0_mads_rcvd,
			(uint32_t)p_osm->stats.qp0_mads_sent,
			(uint32_t)p_osm->stats.qp0_unicasts_sent,
			(uint32_t)p_osm->stats.qp0_mads_rcvd_unknown,
			(uint32_t)p_osm->stats.sa_mads_outstanding,
			(uint32_t)p_osm->stats.sa_mads_rcvd,
			(uint32_t)p_osm->stats.sa_mads_sent,
			(uint32_t)p_osm->stats.sa_mads_rcvd_unknown,
			(uint32_t)p_osm->stats.sa_mads_ignored);
		FUNC6(out, "\n   Subnet flags\n"
			"   ------------\n"
			"   Sweeping enabled               : %d\n"
			"   Sweep interval (seconds)       : %u\n"
			"   Ignore existing lfts           : %d\n"
			"   Subnet Init errors             : %d\n"
			"   In sweep hop 0                 : %d\n"
			"   First time master sweep        : %d\n"
			"   Coming out of standby          : %d\n",
			p_osm->subn.sweeping_enabled,
			p_osm->subn.opt.sweep_interval,
			p_osm->subn.ignore_existing_lfts,
			p_osm->subn.subnet_initialization_error,
			p_osm->subn.in_sweep_hop_0,
			p_osm->subn.first_time_master_sweep,
			p_osm->subn.coming_out_of_standby);
		FUNC5(p_osm, out);
		FUNC6(out, "\n");
		FUNC1(&p_osm->lock);
	}
}