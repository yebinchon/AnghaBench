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
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int isc_uint64_t ;
typedef  int /*<<< orphan*/  isc_time_t ;
typedef  int /*<<< orphan*/  isc_socketwait_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  void* isc_boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  taskmgr; int /*<<< orphan*/  socketmgr; int /*<<< orphan*/  timermgr; void* want_reload; int /*<<< orphan*/  want_shutdown; } ;
typedef  TYPE_1__ isc__appctx_t ;

/* Variables and functions */
 void* ISC_FALSE ; 
 int /*<<< orphan*/  ISC_R_RELOAD ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 void* ISC_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct timeval*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static isc_result_t
FUNC8(isc__appctx_t *ctx) {
	isc_result_t result;

	while (!ctx->want_shutdown) {
		int n;
		isc_time_t when, now;
		struct timeval tv, *tvp;
		isc_socketwait_t *swait;
		isc_boolean_t readytasks;
		isc_boolean_t call_timer_dispatch = ISC_FALSE;

		/*
		 * Check the reload (or suspend) case first for exiting the
		 * loop as fast as possible in case:
		 *   - the direct call to isc__taskmgr_dispatch() in
		 *     isc__app_ctxrun() completes all the tasks so far,
		 *   - there is thus currently no active task, and
		 *   - there is a timer event
		 */
		if (ctx->want_reload) {
			ctx->want_reload = ISC_FALSE;
			return (ISC_R_RELOAD);
		}

		readytasks = FUNC4(ctx->taskmgr);
		if (readytasks) {
			tv.tv_sec = 0;
			tv.tv_usec = 0;
			tvp = &tv;
			call_timer_dispatch = ISC_TRUE;
		} else {
			result = FUNC6(ctx->timermgr, &when);
			if (result != ISC_R_SUCCESS)
				tvp = NULL;
			else {
				isc_uint64_t us;

				FUNC0(&now);
				us = FUNC7(&when, &now);
				if (us == 0)
					call_timer_dispatch = ISC_TRUE;
				tv.tv_sec = us / 1000000;
				tv.tv_usec = us % 1000000;
				tvp = &tv;
			}
		}

		swait = NULL;
		n = FUNC2(ctx->socketmgr, tvp, &swait);

		if (n == 0 || call_timer_dispatch) {
			/*
			 * We call isc__timermgr_dispatch() only when
			 * necessary, in order to reduce overhead.  If the
			 * select() call indicates a timeout, we need the
			 * dispatch.  Even if not, if we set the 0-timeout
			 * for the select() call, we need to check the timer
			 * events.  In the 'readytasks' case, there may be no
			 * timeout event actually, but there is no other way
			 * to reduce the overhead.
			 * Note that we do not have to worry about the case
			 * where a new timer is inserted during the select()
			 * call, since this loop only runs in the non-thread
			 * mode.
			 */
			FUNC5(ctx->timermgr);
		}
		if (n > 0)
			(void)FUNC1(ctx->socketmgr, swait);
		(void)FUNC3(ctx->taskmgr);
	}
	return (ISC_R_SUCCESS);
}