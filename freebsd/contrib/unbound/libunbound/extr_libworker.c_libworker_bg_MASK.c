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
struct ub_ctx {int /*<<< orphan*/  rr_pipe; int /*<<< orphan*/  qq_pipe; int /*<<< orphan*/  bg_pid; int /*<<< orphan*/  cfglock; int /*<<< orphan*/  bg_tid; scalar_t__ dothread; } ;
struct libworker {int is_bg_thread; int thread_num; } ;

/* Variables and functions */
 int UB_FORKFAIL ; 
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct libworker*) ; 
 struct libworker* FUNC4 (struct ub_ctx*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct libworker*),struct libworker*) ; 

int FUNC10(struct ub_ctx* ctx)
{
	struct libworker* w;
	/* fork or threadcreate */
	FUNC5(&ctx->cfglock);
	if(ctx->dothread) {
		FUNC6(&ctx->cfglock);
		w = FUNC4(ctx, 1, NULL);
		if(!w) return UB_NOMEM;
		w->is_bg_thread = 1;
#ifdef ENABLE_LOCK_CHECKS
		w->thread_num = 1; /* for nicer DEBUG checklocks */
#endif
		FUNC9(&ctx->bg_tid, libworker_dobg, w);
	} else {
		FUNC6(&ctx->cfglock);
#ifndef HAVE_FORK
		/* no fork on windows */
		return UB_FORKFAIL;
#else /* HAVE_FORK */
		switch((ctx->bg_pid=fork())) {
			case 0:
				w = libworker_setup(ctx, 1, NULL);
				if(!w) fatal_exit("out of memory");
				/* close non-used parts of the pipes */
				tube_close_write(ctx->qq_pipe);
				tube_close_read(ctx->rr_pipe);
				(void)libworker_dobg(w);
				exit(0);
				break;
			case -1:
				return UB_FORKFAIL;
			default:
				/* close non-used parts, so that the worker
				 * bgprocess gets 'pipe closed' when the
				 * main process exits */
				tube_close_read(ctx->qq_pipe);
				tube_close_write(ctx->rr_pipe);
				break;
		}
#endif /* HAVE_FORK */ 
	}
	return UB_NOERROR;
}