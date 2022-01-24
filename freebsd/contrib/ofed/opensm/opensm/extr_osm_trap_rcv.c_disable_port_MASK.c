#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  payload ;
struct TYPE_23__ {TYPE_15__* p_subn; } ;
typedef  TYPE_3__ osm_sm_t ;
struct TYPE_24__ {scalar_t__ lid; } ;
typedef  TYPE_4__ osm_port_t ;
struct TYPE_21__ {scalar_t__ hop_count; } ;
struct TYPE_25__ {int /*<<< orphan*/  p_node; int /*<<< orphan*/  port_info; struct TYPE_25__* p_remote_physp; TYPE_1__ dr_path; } ;
typedef  TYPE_5__ osm_physp_t ;
struct TYPE_22__ {void* client_rereg; void* active_transition; void* light_sweep; int /*<<< orphan*/  set_method; int /*<<< orphan*/  port_guid; int /*<<< orphan*/  node_guid; } ;
struct TYPE_26__ {TYPE_2__ pi_context; } ;
typedef  TYPE_6__ osm_madw_context_t ;
struct TYPE_27__ {int /*<<< orphan*/  master_sm_base_lid; scalar_t__ base_lid; } ;
typedef  TYPE_7__ ib_port_info_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;
typedef  int ib_api_status_t ;
struct TYPE_20__ {int /*<<< orphan*/  sm_base_lid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_DISP_MSGID_NONE ; 
 void* FALSE ; 
 int /*<<< orphan*/  IB_LINK_DOWN ; 
 int /*<<< orphan*/  IB_MAD_ATTR_PORT_INFO ; 
 scalar_t__ IB_NODE_TYPE_SWITCH ; 
 int /*<<< orphan*/  IB_PORT_PHYS_STATE_DISABLED ; 
 int IB_SMP_DATA_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC5 (TYPE_15__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 

__attribute__((used)) static int FUNC13(osm_sm_t *sm, osm_physp_t *p)
{
	uint8_t payload[IB_SMP_DATA_SIZE];
	osm_madw_context_t context;
	ib_port_info_t *pi = (ib_port_info_t *)payload;
	osm_physp_t *physp0;
	osm_port_t *p_port;
	ib_net64_t m_key;
	ib_api_status_t status;

	/* select the nearest port to master opensm */
	if (p->p_remote_physp &&
	    p->dr_path.hop_count > p->p_remote_physp->dr_path.hop_count)
		p = p->p_remote_physp;

	/* If trap 131, might want to disable peer port if available */
	/* but peer port has been observed not to respond to SM requests */

	FUNC4(payload, &p->port_info, sizeof(ib_port_info_t));

	/* Set port to disabled/down */
	FUNC3(pi, IB_LINK_DOWN);
	FUNC2(IB_PORT_PHYS_STATE_DISABLED, pi);

	/* Issue set of PortInfo */
	context.pi_context.node_guid = FUNC6(p->p_node);
	context.pi_context.port_guid = FUNC10(p);
	context.pi_context.set_method = TRUE;
	context.pi_context.light_sweep = FALSE;
	context.pi_context.active_transition = FALSE;
	context.pi_context.client_rereg = FALSE;
	if (FUNC8(p->p_node) == IB_NODE_TYPE_SWITCH &&
	    FUNC11(p) != 0) {
		physp0 = FUNC7(p->p_node, 0);
		m_key = FUNC1(&physp0->port_info);
	} else
		m_key = FUNC1(&p->port_info);

	if (FUNC8(p->p_node) != IB_NODE_TYPE_SWITCH) {
		if (!pi->base_lid) {
			p_port = FUNC5(sm->p_subn,
						      FUNC10(p));
			pi->base_lid = p_port->lid;
		}
		pi->master_sm_base_lid = sm->p_subn->sm_base_lid;
	}

	status = FUNC12(sm, FUNC9(p),
			   payload, sizeof(payload), IB_MAD_ATTR_PORT_INFO,
			   FUNC0(FUNC11(p)),
			   FALSE, m_key,
			   CL_DISP_MSGID_NONE, &context);
	return status;
}