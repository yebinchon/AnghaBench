#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct osm_opensm {int /*<<< orphan*/  disp; int /*<<< orphan*/  p_vendor; int /*<<< orphan*/  mad_pool; int /*<<< orphan*/  log; int /*<<< orphan*/  sm; int /*<<< orphan*/  subn; } ;
typedef  int /*<<< orphan*/  osm_subn_opt_t ;
struct TYPE_6__ {scalar_t__ cc_disp_h; int /*<<< orphan*/ * log; int /*<<< orphan*/  cc_poller; int /*<<< orphan*/  thread_state; int /*<<< orphan*/  sig_mads_on_wire_continue; int /*<<< orphan*/  outstanding_mads_done_event; int /*<<< orphan*/  cc_poller_wakeup; int /*<<< orphan*/  mad_queue_lock; int /*<<< orphan*/  mad_queue; int /*<<< orphan*/  vendor; int /*<<< orphan*/  trans_id; int /*<<< orphan*/ * mad_pool; int /*<<< orphan*/ * sm; int /*<<< orphan*/ * subn; struct osm_opensm* osm; } ;
typedef  TYPE_1__ osm_congestion_control_t ;
typedef  scalar_t__ ib_api_status_t ;

/* Variables and functions */
 scalar_t__ CL_DISP_INVALID_HANDLE ; 
 int /*<<< orphan*/  CONGESTION_CONTROL_INITIAL_TID_VALUE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IB_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSM_MSG_MAD_CC ; 
 int /*<<< orphan*/  OSM_THREAD_STATE_NONE ; 
 int /*<<< orphan*/  cc_poller ; 
 int /*<<< orphan*/  cc_rcv_mad ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

ib_api_status_t FUNC9(osm_congestion_control_t * p_cc,
					    struct osm_opensm *p_osm,
					    const osm_subn_opt_t * p_opt)
{
	ib_api_status_t status = IB_SUCCESS;

	FUNC0(&p_osm->log);

	FUNC8(p_cc, 0, sizeof(*p_cc));

	p_cc->osm = p_osm;
	p_cc->subn = &p_osm->subn;
	p_cc->sm = &p_osm->sm;
	p_cc->log = &p_osm->log;
	p_cc->mad_pool = &p_osm->mad_pool;
	p_cc->trans_id = CONGESTION_CONTROL_INITIAL_TID_VALUE;
	p_cc->vendor = p_osm->p_vendor;

	p_cc->cc_disp_h = FUNC2(&p_osm->disp, OSM_MSG_MAD_CC,
					   cc_rcv_mad, p_cc);
	if (p_cc->cc_disp_h == CL_DISP_INVALID_HANDLE)
		goto Exit;

	FUNC5(&p_cc->mad_queue);

	status = FUNC6(&p_cc->mad_queue_lock);
	if (status != IB_SUCCESS)
		goto Exit;

	FUNC3(&p_cc->cc_poller_wakeup);
	status = FUNC4(&p_cc->cc_poller_wakeup, FALSE);
	if (status != IB_SUCCESS)
		goto Exit;

	FUNC3(&p_cc->outstanding_mads_done_event);
	status = FUNC4(&p_cc->outstanding_mads_done_event, FALSE);
	if (status != IB_SUCCESS)
		goto Exit;

	FUNC3(&p_cc->sig_mads_on_wire_continue);
	status = FUNC4(&p_cc->sig_mads_on_wire_continue, FALSE);
	if (status != IB_SUCCESS)
		goto Exit;

	p_cc->thread_state = OSM_THREAD_STATE_NONE;

	status = FUNC7(&p_cc->cc_poller, cc_poller, p_cc,
				"cc poller");
	if (status != IB_SUCCESS)
		goto Exit;

	status = IB_SUCCESS;
Exit:
	FUNC1(p_cc->log);
	return status;
}