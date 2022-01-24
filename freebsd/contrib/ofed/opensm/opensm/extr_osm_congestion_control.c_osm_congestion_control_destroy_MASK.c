#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_madw_t ;
struct TYPE_3__ {int /*<<< orphan*/  log; int /*<<< orphan*/  sig_mads_on_wire_continue; int /*<<< orphan*/  outstanding_mads_done_event; int /*<<< orphan*/  cc_poller_wakeup; int /*<<< orphan*/  mad_queue_lock; int /*<<< orphan*/  mad_pool; int /*<<< orphan*/  mad_queue; int /*<<< orphan*/  cc_poller; int /*<<< orphan*/  thread_state; } ;
typedef  TYPE_1__ osm_congestion_control_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_THREAD_STATE_EXIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(osm_congestion_control_t * p_cc)
{
	osm_madw_t *p_madw;

	FUNC0(p_cc->log);

	p_cc->thread_state = OSM_THREAD_STATE_EXIT;

	FUNC3(&p_cc->sig_mads_on_wire_continue);
	FUNC3(&p_cc->cc_poller_wakeup);

	FUNC9(&p_cc->cc_poller);

	FUNC6(&p_cc->mad_queue_lock);

	while (!FUNC4(&p_cc->mad_queue)) {
		p_madw = (osm_madw_t *) FUNC5(&p_cc->mad_queue);
		FUNC10(p_cc->mad_pool, p_madw);
	}

	FUNC8(&p_cc->mad_queue_lock);

	FUNC7(&p_cc->mad_queue_lock);

	FUNC2(&p_cc->cc_poller_wakeup);
	FUNC2(&p_cc->outstanding_mads_done_event);
	FUNC2(&p_cc->sig_mads_on_wire_continue);

	FUNC1(p_cc->log);
}