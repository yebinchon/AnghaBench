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
typedef  scalar_t__ uint32_t ;
struct ub_ctx {int /*<<< orphan*/  cfglock; int /*<<< orphan*/  bg_pid; int /*<<< orphan*/  bg_tid; scalar_t__ dothread; int /*<<< orphan*/  rrpipe_lock; int /*<<< orphan*/  rr_pipe; int /*<<< orphan*/  qqpipe_lock; int /*<<< orphan*/  qq_pipe; scalar_t__ created_bg; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 scalar_t__ UB_LIBCMD_QUIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int verbosity ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ub_ctx* ctx)
{
	/* stop the bg thread */
	FUNC2(&ctx->cfglock);
	if(ctx->created_bg) {
		uint8_t* msg;
		uint32_t len;
		uint32_t cmd = UB_LIBCMD_QUIT;
		FUNC3(&ctx->cfglock);
		FUNC2(&ctx->qqpipe_lock);
		(void)FUNC7(ctx->qq_pipe, (uint8_t*)&cmd, 
			(uint32_t)sizeof(cmd), 0);
		FUNC3(&ctx->qqpipe_lock);
		FUNC2(&ctx->rrpipe_lock);
		while(FUNC6(ctx->rr_pipe, &msg, &len, 0)) {
			/* discard all results except a quit confirm */
			if(FUNC0(msg, len) == UB_LIBCMD_QUIT) {
				FUNC1(msg);
				break;
			}
			FUNC1(msg);
		}
		FUNC3(&ctx->rrpipe_lock);

		/* if bg worker is a thread, wait for it to exit, so that all
	 	 * resources are really gone. */
		FUNC2(&ctx->cfglock);
		if(ctx->dothread) {
			FUNC3(&ctx->cfglock);
			FUNC8(ctx->bg_tid);
		} else {
			FUNC3(&ctx->cfglock);
#ifndef UB_ON_WINDOWS
			if(FUNC9(ctx->bg_pid, NULL, 0) == -1) {
				if(verbosity > 2)
					FUNC4("waitpid: %s", FUNC5(errno));
			}
#endif
		}
	}
	else {
		FUNC3(&ctx->cfglock);
	}
}