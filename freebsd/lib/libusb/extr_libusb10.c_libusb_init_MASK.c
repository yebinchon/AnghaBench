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
struct libusb_context {int debug_fixed; int /*<<< orphan*/ * ctrl_pipe; int /*<<< orphan*/  ctx_poll; int /*<<< orphan*/  ctx_cond; int /*<<< orphan*/  hotplug_lock; int /*<<< orphan*/  ctx_lock; void* hotplug_handler; void* ctx_handler; int /*<<< orphan*/  hotplug_devs; int /*<<< orphan*/  hotplug_cbh; int /*<<< orphan*/  tr_done; int /*<<< orphan*/  pollfds; scalar_t__ debug; } ;
typedef  int /*<<< orphan*/  pthread_condattr_t ;
typedef  struct libusb_context libusb_context ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (struct libusb_context*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LIBUSB_DEBUG_FUNCTION ; 
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_NO_MEM ; 
 int LIBUSB_ERROR_OTHER ; 
 void* NO_THREAD ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  default_context_lock ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct libusb_context*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct libusb_context* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct libusb_context*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (char*,char**,int) ; 
 struct libusb_context* usbi_default_context ; 

int
FUNC19(libusb_context **context)
{
	struct libusb_context *ctx;
	pthread_condattr_t attr;
	char *debug, *ep;
	int ret;

	ctx = FUNC6(sizeof(*ctx));
	if (!ctx)
		return (LIBUSB_ERROR_INVALID_PARAM);

	FUNC7(ctx, 0, sizeof(*ctx));

	debug = FUNC3("LIBUSB_DEBUG");
	if (debug != NULL) {
		/*
		 * If LIBUSB_DEBUG is set, we'll honor that and use it to
		 * override libusb_set_debug calls.
		 */
		errno = 0;
		ctx->debug = FUNC18(debug, &ep, 10);
		if (errno == 0 && *ep == '\0') {
			ctx->debug_fixed = 1;
		} else {
			/*
			 * LIBUSB_DEBUG conversion failed for some reason, but
			 * we don't care about the specifics all that much.  We
			 * can't use it either way.  Force it to the default,
			 * 0, in case we had a partial number.
			 */
			ctx->debug = 0;
		}
	}
	FUNC1(&ctx->pollfds);
	FUNC1(&ctx->tr_done);
	FUNC1(&ctx->hotplug_cbh);
	FUNC1(&ctx->hotplug_devs);

	if (FUNC15(&ctx->ctx_lock, NULL) != 0) {
		FUNC2(ctx);
		return (LIBUSB_ERROR_NO_MEM);
	}
	if (FUNC15(&ctx->hotplug_lock, NULL) != 0) {
		FUNC14(&ctx->ctx_lock);
		FUNC2(ctx);
		return (LIBUSB_ERROR_NO_MEM);
	}
	if (FUNC12(&attr) != 0) {
		FUNC14(&ctx->ctx_lock);
		FUNC14(&ctx->hotplug_lock);
		FUNC2(ctx);
		return (LIBUSB_ERROR_NO_MEM);
	}
	if (FUNC13(&attr, CLOCK_MONOTONIC) != 0) {
		FUNC14(&ctx->ctx_lock);
		FUNC14(&ctx->hotplug_lock);
		FUNC11(&attr);
		FUNC2(ctx);
		return (LIBUSB_ERROR_OTHER);
	}
	if (FUNC10(&ctx->ctx_cond, &attr) != 0) {
		FUNC14(&ctx->ctx_lock);
		FUNC14(&ctx->hotplug_lock);
		FUNC11(&attr);
		FUNC2(ctx);
		return (LIBUSB_ERROR_NO_MEM);
	}
	FUNC11(&attr);

	ctx->ctx_handler = NO_THREAD;
	ctx->hotplug_handler = NO_THREAD;

	ret = FUNC8(ctx->ctrl_pipe);
	if (ret < 0) {
		FUNC14(&ctx->ctx_lock);
		FUNC14(&ctx->hotplug_lock);
		FUNC9(&ctx->ctx_cond);
		FUNC2(ctx);
		return (LIBUSB_ERROR_OTHER);
	}
	/* set non-blocking mode on the control pipe to avoid deadlock */
	FUNC5(ctx->ctrl_pipe[0]);
	FUNC5(ctx->ctrl_pipe[1]);

	FUNC4(ctx, &ctx->ctx_poll, NULL, ctx->ctrl_pipe[0], POLLIN);

	FUNC16(&default_context_lock);
	if (usbi_default_context == NULL) {
		usbi_default_context = ctx;
	}
	FUNC17(&default_context_lock);

	if (context)
		*context = ctx;

	FUNC0(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_init complete");

	return (0);
}