#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ ids_guid_file; scalar_t__ connect_roots; scalar_t__ root_guid_file; } ;
struct TYPE_13__ {int /*<<< orphan*/  sw_guid_tbl; TYPE_2__ opt; } ;
struct TYPE_11__ {int /*<<< orphan*/  ucast_mgr; } ;
struct TYPE_14__ {int num_roots; int /*<<< orphan*/  log; struct TYPE_14__* p_osm; TYPE_3__ subn; TYPE_1__ sm; } ;
typedef  TYPE_4__ updn_t ;
struct TYPE_15__ {int /*<<< orphan*/  priv; } ;
typedef  TYPE_5__ osm_switch_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSM_LOG_INFO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ROUTING ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_roots ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  rank_root_node ; 
 int /*<<< orphan*/  update_id ; 
 int FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC14(void *ctx)
{
	updn_t *p_updn = ctx;
	cl_map_item_t *item;
	osm_switch_t *p_sw;
	int ret = 0;

	FUNC1(&p_updn->p_osm->log);

	for (item = FUNC5(&p_updn->p_osm->subn.sw_guid_tbl);
	     item != FUNC4(&p_updn->p_osm->subn.sw_guid_tbl);
	     item = FUNC6(item)) {
		p_sw = (osm_switch_t *)item;
		p_sw->priv = FUNC7(p_sw);
		if (!p_sw->priv) {
			FUNC0(&(p_updn->p_osm->log), OSM_LOG_ERROR, "ERR AA0C: "
				"cannot create updn node\n");
			FUNC2(&p_updn->p_osm->log);
			return -1;
		}
	}

	/* First setup root nodes */
	p_updn->num_roots = 0;

	if (p_updn->p_osm->subn.opt.root_guid_file) {
		FUNC0(&p_updn->p_osm->log, OSM_LOG_DEBUG,
			"UPDN - Fetching root nodes from file \'%s\'\n",
			p_updn->p_osm->subn.opt.root_guid_file);

		ret = FUNC11(p_updn->p_osm->subn.opt.root_guid_file,
				     rank_root_node, p_updn);
		if (ret) {
			FUNC0(&p_updn->p_osm->log, OSM_LOG_ERROR, "ERR AA02: "
				"cannot parse root guids file \'%s\'\n",
				p_updn->p_osm->subn.opt.root_guid_file);
			FUNC10(&p_updn->p_osm->sm.ucast_mgr);
			FUNC13(p_updn);
		} else if (p_updn->p_osm->subn.opt.connect_roots &&
			   p_updn->num_roots > 1)
			FUNC10(&p_updn->p_osm->sm.ucast_mgr);
	} else {
		FUNC10(&p_updn->p_osm->sm.ucast_mgr);
		FUNC13(p_updn);
	}

	if (p_updn->p_osm->subn.opt.ids_guid_file) {
		FUNC0(&p_updn->p_osm->log, OSM_LOG_DEBUG,
			"UPDN - update node ids from file \'%s\'\n",
			p_updn->p_osm->subn.opt.ids_guid_file);

		ret = FUNC11(p_updn->p_osm->subn.opt.ids_guid_file,
				     update_id, p_updn->p_osm);
		if (ret)
			FUNC0(&p_updn->p_osm->log, OSM_LOG_ERROR, "ERR AA03: "
				"cannot parse node ids file \'%s\'\n",
				p_updn->p_osm->subn.opt.ids_guid_file);
	}

	/* Only if there are assigned root nodes do the algorithm, otherwise perform do nothing */
	if (p_updn->num_roots) {
		FUNC0(&p_updn->p_osm->log, OSM_LOG_DEBUG,
			"activating UPDN algorithm\n");
		ret = FUNC12(p_updn);
	} else {
		FUNC0(&p_updn->p_osm->log, OSM_LOG_INFO,
			"disabling UPDN algorithm, no root nodes were found\n");
		ret = -1;
	}

	if (FUNC3(&p_updn->p_osm->log, OSM_LOG_ROUTING))
		FUNC9(p_updn->p_osm, "opensm-updn-roots.dump",
				      &p_updn->p_osm->subn.sw_guid_tbl,
				      dump_roots, NULL);

	for (item = FUNC5(&p_updn->p_osm->subn.sw_guid_tbl);
	     item != FUNC4(&p_updn->p_osm->subn.sw_guid_tbl);
	     item = FUNC6(item)) {
		p_sw = (osm_switch_t *) item;
		FUNC8(p_sw->priv);
	}

	FUNC2(&p_updn->p_osm->log);
	return ret;
}