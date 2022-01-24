#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_15__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct qos_config {int /*<<< orphan*/  sl2vl; } ;
struct TYPE_26__ {int /*<<< orphan*/  list_item; int /*<<< orphan*/  port_mad_list; } ;
typedef  TYPE_5__ qos_mad_list_t ;
struct TYPE_27__ {int /*<<< orphan*/  p_madw; } ;
typedef  TYPE_6__ qos_mad_item_t ;
struct TYPE_28__ {int /*<<< orphan*/  p_physp; TYPE_9__* p_node; } ;
typedef  TYPE_7__ osm_port_t ;
struct TYPE_20__ {TYPE_4__* p_subn; } ;
struct TYPE_22__ {int /*<<< orphan*/  qos_options; int /*<<< orphan*/  qos_rtr_options; int /*<<< orphan*/  qos_swe_options; int /*<<< orphan*/  qos_sw0_options; int /*<<< orphan*/  qos_ca_options; int /*<<< orphan*/  qos; } ;
struct TYPE_21__ {int /*<<< orphan*/  port_guid_tbl; TYPE_1__ opt; } ;
struct TYPE_29__ {int /*<<< orphan*/  log; int /*<<< orphan*/  lock; TYPE_10__ sm; TYPE_15__ subn; } ;
typedef  TYPE_8__ osm_opensm_t ;
struct TYPE_30__ {TYPE_2__* sw; } ;
typedef  TYPE_9__ osm_node_t ;
typedef  int /*<<< orphan*/  cl_qmap_t ;
typedef  int /*<<< orphan*/  cl_qlist_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
struct TYPE_24__ {scalar_t__ use_optimized_slvl; } ;
struct TYPE_25__ {TYPE_3__ opt; } ;
struct TYPE_23__ {int /*<<< orphan*/  switch_info; } ;

/* Variables and functions */
 scalar_t__ IB_NODE_TYPE_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct qos_config*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (TYPE_10__*,int /*<<< orphan*/ ,struct qos_config*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (TYPE_10__*,TYPE_9__*,struct qos_config*,int /*<<< orphan*/ *) ; 

int FUNC28(osm_opensm_t * p_osm)
{
	struct qos_config ca_config, sw0_config, swe_config, rtr_config;
	struct qos_config *cfg;
	cl_qmap_t *p_tbl;
	cl_map_item_t *p_next;
	osm_port_t *p_port;
	osm_node_t *p_node;
	int ret = 0;
	int vlarb_only;
	qos_mad_list_t *p_list, *p_list_next;
	qos_mad_item_t *p_port_mad;
	cl_qlist_t qos_mad_list;

	if (!p_osm->subn.opt.qos)
		return 0;

	FUNC0(&p_osm->log);

	FUNC25(&ca_config, &p_osm->subn.opt.qos_ca_options,
			 &p_osm->subn.opt.qos_options);
	FUNC25(&sw0_config, &p_osm->subn.opt.qos_sw0_options,
			 &p_osm->subn.opt.qos_options);
	FUNC25(&swe_config, &p_osm->subn.opt.qos_swe_options,
			 &p_osm->subn.opt.qos_options);
	FUNC25(&rtr_config, &p_osm->subn.opt.qos_rtr_options,
			 &p_osm->subn.opt.qos_options);

	FUNC7(&qos_mad_list);

	FUNC2(&p_osm->lock);

	/* read QoS policy config file */
	FUNC23(&p_osm->subn);
	p_tbl = &p_osm->subn.port_guid_tbl;
	p_next = FUNC13(p_tbl);
	while (p_next != FUNC12(p_tbl)) {
		vlarb_only = 0;
		p_port = (osm_port_t *) p_next;
		p_next = FUNC14(p_next);

		p_list = (qos_mad_list_t *) FUNC18(sizeof(*p_list));
		if (!p_list) {
			FUNC3(&p_osm->lock);
			return -1;
		}

		FUNC20(p_list, 0, sizeof(*p_list));

		FUNC7(&p_list->port_mad_list);

		p_node = p_port->p_node;
		if (p_node->sw) {
			if (FUNC27(&p_osm->sm, p_node, &swe_config,
					       &p_list->port_mad_list)) {
				FUNC3(&p_osm->lock);
				ret = -1;
			}

			/* skip base port 0 */
			if (!FUNC17
			    (&p_node->sw->switch_info))
				goto Continue;

			if (FUNC16(&p_node->sw->switch_info) &&
			    p_osm->sm.p_subn->opt.use_optimized_slvl &&
			    !FUNC19(&swe_config.sl2vl, &sw0_config.sl2vl,
				    sizeof(swe_config.sl2vl)))
				vlarb_only = 1;

			cfg = &sw0_config;
		} else if (FUNC21(p_node) == IB_NODE_TYPE_ROUTER)
			cfg = &rtr_config;
		else
			cfg = &ca_config;

		if (FUNC26(&p_osm->sm, p_port->p_physp, cfg,
				      vlarb_only, &p_list->port_mad_list)) {
			FUNC3(&p_osm->lock);
			ret = -1;
		}
Continue:
		/* if MAD list is not empty, add it to the global MAD list */
		if (FUNC4(&p_list->port_mad_list)) {
			FUNC8(&qos_mad_list, &p_list->list_item);
		} else {
			FUNC15(p_list);
		}
	}
	while (FUNC4(&qos_mad_list)) {
		p_list_next = (qos_mad_list_t *) FUNC6(&qos_mad_list);
		while (p_list_next !=
			(qos_mad_list_t *) FUNC5(&qos_mad_list)) {
			p_list = p_list_next;
			p_list_next = (qos_mad_list_t *)
				      FUNC9(&p_list->list_item);
			/* next MAD to send*/
			p_port_mad = (qos_mad_item_t *)
				     FUNC10(&p_list->port_mad_list);
			FUNC24(&p_osm->sm, p_port_mad->p_madw);
			FUNC22(&p_port_mad);
			/* remove the QoS MAD from global MAD list */
			if (FUNC4(&p_list->port_mad_list) == 0) {
				FUNC11(&qos_mad_list, &p_list->list_item);
				FUNC15(p_list);
			}
		}
	}

	FUNC3(&p_osm->lock);
	FUNC1(&p_osm->log);

	return ret;
}