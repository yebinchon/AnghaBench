#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* p_event_wheel; } ;
struct TYPE_10__ {void* is_closing; TYPE_3__ txn_mgr; TYPE_1__* p_vendor; } ;
typedef  TYPE_4__ osmv_bind_obj_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
typedef  scalar_t__ osm_bind_handle_t ;
struct TYPE_8__ {void* closing; } ;
struct TYPE_7__ {int /*<<< orphan*/ * p_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(osm_bind_handle_t h_bind)
{
	osmv_bind_obj_t *p_bo = (osmv_bind_obj_t *) h_bind;
	osm_log_t *p_log = p_bo->p_vendor->p_log;

	FUNC0(p_log);

	/* "notifying" all that from now on no new sends can be done */
	p_bo->txn_mgr.p_event_wheel->closing = TRUE;

	FUNC5(p_bo);

	/*
	   the is_closing is set under lock we we know we only need to
	   check for it after obtaining the lock
	 */
	p_bo->is_closing = TRUE;

	/* notifying all sleeping rmpp sends to exit */
	FUNC4(h_bind);

	/* unlock the bo to allow for any residual mads to be dispatched */
	FUNC6(p_bo);
	FUNC2(p_log, OSM_LOG_DEBUG,
		"__osm_vendor_internal_unbind: destroying transport mgr.. \n");
	/* wait for the receiver thread to exit */
	FUNC3(h_bind);

	/* lock to avoid any collissions while we cleanup the structs */
	FUNC5(p_bo);
	FUNC2(p_log, OSM_LOG_DEBUG,
		"__osm_vendor_internal_unbind: destroying txn mgr.. \n");
	FUNC7(h_bind);
	FUNC2(p_log, OSM_LOG_DEBUG,
		"__osm_vendor_internal_unbind: destroying bind lock.. \n");
	FUNC6(p_bo);

	/*
	   we intentionally let the p_bo and its lock leak -
	   as we did not implement a way to track active bind handles provided to
	   the client - and the client might use them

	   cl_spinlock_destroy(&p_bo->lock);
	   free(p_bo);
	 */

	FUNC1(p_log);
}