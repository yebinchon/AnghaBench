#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct dnup_node {scalar_t__ rank; } ;
struct TYPE_12__ {scalar_t__ num_ports; struct dnup_node* priv; TYPE_7__* p_node; } ;
typedef  TYPE_3__ osm_switch_t ;
struct TYPE_13__ {int /*<<< orphan*/  sw; } ;
typedef  TYPE_4__ osm_node_t ;
struct TYPE_14__ {TYPE_2__* p_osm; } ;
typedef  TYPE_5__ dnup_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
struct TYPE_15__ {int /*<<< orphan*/  print_desc; } ;
struct TYPE_10__ {int /*<<< orphan*/  sw_guid_tbl; } ;
struct TYPE_11__ {int /*<<< orphan*/  log; TYPE_1__ subn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 struct dnup_node* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct dnup_node*) ; 
 int FUNC8 (TYPE_5__*) ; 
 TYPE_4__* FUNC9 (TYPE_7__*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC10(void *ctx)
{
	dnup_t *p_dnup = ctx;
	cl_map_item_t *item;
	osm_switch_t *p_sw;
	int ret = 0;
	int num_leafs = 0;
	uint8_t pn, pn_rem;

	FUNC1(&p_dnup->p_osm->log);

	for (item = FUNC4(&p_dnup->p_osm->subn.sw_guid_tbl);
	     item != FUNC3(&p_dnup->p_osm->subn.sw_guid_tbl);
	     item = FUNC5(item)) {
		p_sw = (osm_switch_t *)item;
		p_sw->priv = FUNC6(p_sw);
		if (!p_sw->priv) {
			FUNC0(&(p_dnup->p_osm->log), OSM_LOG_ERROR, "ERR AE0C: "
				"cannot create dnup node\n");
			FUNC2(&p_dnup->p_osm->log);
			return -1;
		}
	}


	/* First setup node level nodes */
	for (item = FUNC4(&p_dnup->p_osm->subn.sw_guid_tbl);
	     item != FUNC3(&p_dnup->p_osm->subn.sw_guid_tbl);
	     item = FUNC5(item)) {
		p_sw = (osm_switch_t *)item;

		for (pn = 0; pn < p_sw->num_ports; pn++) {
			osm_node_t *p_remote_node;
			p_remote_node = FUNC9(p_sw->p_node, pn, &pn_rem);
			if(p_remote_node && !p_remote_node->sw) {
				struct dnup_node *u = p_sw->priv;
				u->rank = 0;
				FUNC0(&(p_dnup->p_osm->log),
					OSM_LOG_VERBOSE, "(%s) rank 0 leaf switch\n",
					p_sw->p_node->print_desc);
				num_leafs++;
				break;
			}
		}
	}

	if(num_leafs == 0) {
		FUNC0(&(p_dnup->p_osm->log),
			OSM_LOG_ERROR, "ERR AE0D: No leaf switches found, DnUp routing failed\n");
		FUNC2(&p_dnup->p_osm->log);
		return -1;
	}

	ret = FUNC8(p_dnup);

	for (item = FUNC4(&p_dnup->p_osm->subn.sw_guid_tbl);
	     item != FUNC3(&p_dnup->p_osm->subn.sw_guid_tbl);
	     item = FUNC5(item)) {
		p_sw = (osm_switch_t *) item;
		FUNC7(p_sw->priv);
	}

	FUNC2(&p_dnup->p_osm->log);
	return ret;
}