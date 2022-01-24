#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_madw_t ;
struct TYPE_2__ {int /*<<< orphan*/  log; int /*<<< orphan*/  mad_pool; int /*<<< orphan*/  cc_disp_h; } ;
typedef  TYPE_1__ osm_congestion_control_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_MSG_MAD_CC ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(osm_madw_t * p_madw, void *bind_context,
				 osm_madw_t * p_req_madw)
{
	osm_congestion_control_t *p_cc = bind_context;

	FUNC2(p_cc->log);

	FUNC0(p_madw);

	/* HACK - should be extended when supporting CC traps */
	FUNC0(p_req_madw != NULL);

	FUNC6(p_madw, p_req_madw);
	FUNC5(p_cc->mad_pool, p_req_madw);

	/* Do not decrement outstanding mads here, do it in the dispatcher */

	if (FUNC4(p_cc->cc_disp_h, OSM_MSG_MAD_CC,
			 p_madw, NULL, NULL) != CL_SUCCESS) {
		FUNC1(p_cc->log, OSM_LOG_ERROR, "ERR C105: "
			"Congestion Control Dispatcher post failed\n");
		FUNC5(p_cc->mad_pool, p_madw);
	}

	FUNC3(p_cc->log);
}