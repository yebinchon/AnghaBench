#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  p_log; int /*<<< orphan*/  p_subn; } ;
typedef  TYPE_3__ osm_sm_t ;
struct TYPE_14__ {int /*<<< orphan*/  guid; } ;
struct TYPE_17__ {TYPE_1__ smi; } ;
typedef  TYPE_4__ osm_remote_sm_t ;
struct TYPE_18__ {TYPE_10__* p_physp; } ;
typedef  TYPE_5__ osm_port_t ;
struct TYPE_15__ {int /*<<< orphan*/  light_sweep; int /*<<< orphan*/  set_method; int /*<<< orphan*/  port_guid; } ;
struct TYPE_19__ {TYPE_2__ smi_context; } ;
typedef  TYPE_6__ osm_madw_context_t ;
typedef  scalar_t__ ib_api_status_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;
struct TYPE_13__ {int /*<<< orphan*/  port_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_DISP_MSGID_NONE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IB_MAD_ATTR_SM_INFO ; 
 scalar_t__ IB_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map_item ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 TYPE_4__* r_sm ; 

__attribute__((used)) static void FUNC7(cl_map_item_t * item, void *cxt)
{
	osm_madw_context_t context;
	osm_remote_sm_t *r_sm = FUNC1(item, r_sm, map_item);
	osm_sm_t *sm = cxt;
	ib_api_status_t ret;
	osm_port_t *p_port;

	p_port= FUNC4(sm->p_subn, r_sm->smi.guid);
	if (p_port == NULL) {
		FUNC0(sm->p_log, OSM_LOG_ERROR, "ERR 3340: "
			"No port object on given sm object\n");
		return;
        }

	context.smi_context.port_guid = r_sm->smi.guid;
	context.smi_context.set_method = FALSE;
	context.smi_context.light_sweep = TRUE;

	ret = FUNC6(sm, FUNC5(p_port->p_physp),
			  IB_MAD_ATTR_SM_INFO, 0, FALSE,
			  FUNC3(&p_port->p_physp->port_info),
			  CL_DISP_MSGID_NONE, &context);
	if (ret != IB_SUCCESS)
		FUNC0(sm->p_log, OSM_LOG_ERROR, "ERR 3314: "
			"Failure requesting SMInfo (%s)\n",
			FUNC2(ret));
}