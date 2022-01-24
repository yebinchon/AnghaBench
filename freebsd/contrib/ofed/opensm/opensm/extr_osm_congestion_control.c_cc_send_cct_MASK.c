#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  p_log; TYPE_2__* p_subn; } ;
typedef  TYPE_5__ osm_sm_t ;
struct TYPE_14__ {int /*<<< orphan*/ * cc_tbl; } ;
struct TYPE_15__ {TYPE_3__ ca; } ;
struct TYPE_17__ {TYPE_4__ cc; scalar_t__ need_update; } ;
typedef  TYPE_6__ osm_physp_t ;
typedef  int /*<<< orphan*/  osm_node_t ;
typedef  int /*<<< orphan*/  osm_madw_t ;
struct TYPE_18__ {unsigned int cc_tbl_mads; int /*<<< orphan*/ * cc_tbl; int /*<<< orphan*/  bind_handle; int /*<<< orphan*/  mad_pool; } ;
typedef  TYPE_7__ osm_congestion_control_t ;
typedef  int /*<<< orphan*/  ib_cc_tbl_t ;
typedef  int /*<<< orphan*/  ib_cc_mad_t ;
typedef  int /*<<< orphan*/  ib_api_status_t ;
struct TYPE_13__ {scalar_t__ need_update; TYPE_1__* p_osm; } ;
struct TYPE_12__ {TYPE_7__ cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_INSUFFICIENT_MEMORY ; 
 int /*<<< orphan*/  IB_MAD_ATTR_CC_TBL ; 
 int /*<<< orphan*/  IB_SUCCESS ; 
 int /*<<< orphan*/  MAD_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ib_api_status_t FUNC10(osm_sm_t * p_sm,
				   osm_node_t *p_node,
				   osm_physp_t *p_physp)
{
	osm_congestion_control_t *p_cc = &p_sm->p_subn->p_osm->cc;
	unsigned force_update;
	osm_madw_t *p_madw = NULL;
	ib_cc_mad_t *p_cc_mad = NULL;
	ib_cc_tbl_t *p_cc_tbl = NULL;
	unsigned int index = 0;

	FUNC1(p_sm->p_log);

	force_update = p_physp->need_update || p_sm->p_subn->need_update;

	for (index = 0; index < p_cc->cc_tbl_mads; index++) {
		if (!force_update
		    && !FUNC6(&p_cc->cc_tbl[index],
			       &p_physp->cc.ca.cc_tbl[index],
			       sizeof(p_cc->cc_tbl[index])))
			continue;

		p_madw = FUNC8(p_cc->mad_pool, p_cc->bind_handle,
					  MAD_BLOCK_SIZE, NULL);
		if (p_madw == NULL) {
			FUNC0(p_sm->p_log, OSM_LOG_ERROR, "ERR C103: "
				"failed to allocate mad\n");
			return IB_INSUFFICIENT_MEMORY;
		}

		p_cc_mad = FUNC9(p_madw);

		p_cc_tbl = (ib_cc_tbl_t *)FUNC5(p_cc_mad);

		FUNC7(p_cc_tbl,
		       &p_cc->cc_tbl[index],
		       sizeof(p_cc->cc_tbl[index]));

		FUNC3(p_cc, p_madw, p_node, p_physp,
			    IB_MAD_ATTR_CC_TBL, FUNC4(index));
	}

	FUNC2(p_sm->p_log);

	return IB_SUCCESS;
}