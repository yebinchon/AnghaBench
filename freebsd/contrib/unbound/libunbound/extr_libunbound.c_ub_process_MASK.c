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
struct ub_ctx {int /*<<< orphan*/  rrpipe_lock; int /*<<< orphan*/  rr_pipe; } ;

/* Variables and functions */
 int UB_NOERROR ; 
 int UB_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 

int 
FUNC5(struct ub_ctx* ctx)
{
	int r;
	uint8_t* msg;
	uint32_t len;
	while(1) {
		msg = NULL;
		FUNC1(&ctx->rrpipe_lock);
		r = FUNC4(ctx->rr_pipe, &msg, &len, 1);
		FUNC2(&ctx->rrpipe_lock);
		if(r == 0)
			return UB_PIPE;
		else if(r == -1)
			break;
		if(!FUNC3(ctx, msg, len)) {
			FUNC0(msg);
			return UB_PIPE;
		}
		FUNC0(msg);
	}
	return UB_NOERROR;
}