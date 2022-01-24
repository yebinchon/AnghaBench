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
struct ub_ctx {int /*<<< orphan*/  rr_pipe; int /*<<< orphan*/  qq_pipe; } ;
struct libworker {int want_quit; struct ub_ctx* ctx; int /*<<< orphan*/  base; scalar_t__ is_bg_thread; int /*<<< orphan*/  thread_num; } ;
typedef  int /*<<< orphan*/  m ;

/* Variables and functions */
 int /*<<< orphan*/  UB_LIBCMD_QUIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct libworker*) ; 
 int /*<<< orphan*/  libworker_handle_control_cmd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct libworker*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void*
FUNC11(void* arg)
{
	/* setup */
	uint32_t m;
	struct libworker* w = (struct libworker*)arg;
	struct ub_ctx* ctx;
	if(!w) {
		FUNC2("libunbound bg worker init failed, nomem");
		return NULL;
	}
	ctx = w->ctx;
	FUNC3(&w->thread_num);
#ifdef THREADS_DISABLED
	/* we are forked */
	w->is_bg_thread = 0;
	/* close non-used parts of the pipes */
	tube_close_write(ctx->qq_pipe);
	tube_close_read(ctx->rr_pipe);
#endif
	if(!FUNC8(ctx->qq_pipe, w->base, 
		libworker_handle_control_cmd, w)) {
		FUNC2("libunbound bg worker init failed, no bglisten");
		return NULL;
	}
	if(!FUNC9(ctx->rr_pipe, w->base)) {
		FUNC2("libunbound bg worker init failed, no bgwrite");
		return NULL;
	}

	/* do the work */
	FUNC0(w->base);

	/* cleanup */
	m = UB_LIBCMD_QUIT;
	w->want_quit = 1;
	FUNC6(w->ctx->qq_pipe);
	FUNC7(w->ctx->rr_pipe);
	FUNC1(w);
	(void)FUNC10(ctx->rr_pipe, (uint8_t*)&m, 
		(uint32_t)sizeof(m), 0);
#ifdef THREADS_DISABLED
	/* close pipes from forked process before exit */
	tube_close_read(ctx->qq_pipe);
	tube_close_write(ctx->rr_pipe);
#endif
	return NULL;
}