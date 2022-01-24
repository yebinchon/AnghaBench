#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  (* ub_callback_type ) (void*,int,struct ub_result*) ;
struct ub_result {int dummy; } ;
struct ub_ctx {scalar_t__ num_async; int /*<<< orphan*/  rrpipe_lock; int /*<<< orphan*/  rr_pipe; int /*<<< orphan*/  cfglock; } ;

/* Variables and functions */
 int UB_NOERROR ; 
 int UB_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ub_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (void*,int,struct ub_result*),void**,int*,struct ub_result**) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,struct ub_result*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int 
FUNC7(struct ub_ctx* ctx)
{
	int err;
	ub_callback_type cb;
	void* cbarg;
	struct ub_result* res;
	int r;
	uint8_t* msg;
	uint32_t len;
	/* this is basically the same loop as _process(), but with changes.
	 * holds the rrpipe lock and waits with tube_wait */
	while(1) {
		FUNC1(&ctx->rrpipe_lock);
		FUNC1(&ctx->cfglock);
		if(ctx->num_async == 0) {
			FUNC2(&ctx->cfglock);
			FUNC2(&ctx->rrpipe_lock);
			break;
		}
		FUNC2(&ctx->cfglock);

		/* keep rrpipe locked, while
		 * 	o waiting for pipe readable
		 * 	o parsing message
		 * 	o possibly decrementing num_async
		 * do callback without lock
		 */
		r = FUNC6(ctx->rr_pipe);
		if(r) {
			r = FUNC5(ctx->rr_pipe, &msg, &len, 1);
			if(r == 0) {
				FUNC2(&ctx->rrpipe_lock);
				return UB_PIPE;
			}
			if(r == -1) {
				FUNC2(&ctx->rrpipe_lock);
				continue;
			}
			r = FUNC3(ctx, msg, len, 
				&cb, &cbarg, &err, &res);
			FUNC2(&ctx->rrpipe_lock);
			FUNC0(msg);
			if(r == 0)
				return UB_PIPE;
			if(r == 2)
				(*cb)(cbarg, err, res);
		} else {
			FUNC2(&ctx->rrpipe_lock);
		}
	}
	return UB_NOERROR;
}