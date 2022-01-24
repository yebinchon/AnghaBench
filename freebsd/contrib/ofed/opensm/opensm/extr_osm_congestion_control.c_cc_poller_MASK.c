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
struct TYPE_3__ {scalar_t__ thread_state; int /*<<< orphan*/  log; int /*<<< orphan*/  cc_poller_wakeup; int /*<<< orphan*/  mad_queue; int /*<<< orphan*/  mad_queue_lock; } ;
typedef  TYPE_1__ osm_congestion_control_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_NO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ OSM_THREAD_STATE_NONE ; 
 scalar_t__ OSM_THREAD_STATE_RUN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *p_ptr)
{
	osm_congestion_control_t *p_cc = p_ptr;
	osm_madw_t *p_madw;

	FUNC0(p_cc->log);

	if (p_cc->thread_state == OSM_THREAD_STATE_NONE)
		p_cc->thread_state = OSM_THREAD_STATE_RUN;

	while (p_cc->thread_state == OSM_THREAD_STATE_RUN) {
		FUNC6(&p_cc->mad_queue_lock);

		p_madw = (osm_madw_t *) FUNC5(&p_cc->mad_queue);

		FUNC7(&p_cc->mad_queue_lock);

		if (p_madw != (osm_madw_t *) FUNC4(&p_cc->mad_queue))
			FUNC2(p_cc, p_madw);
		else
			FUNC3(&p_cc->cc_poller_wakeup,
					 EVENT_NO_TIMEOUT, TRUE);
	}

	FUNC1(p_cc->log);
}