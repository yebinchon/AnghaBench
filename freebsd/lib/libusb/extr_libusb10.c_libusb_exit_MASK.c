#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pthread_t ;
struct TYPE_10__ {scalar_t__ hotplug_handler; int /*<<< orphan*/  ctx_cond; int /*<<< orphan*/  hotplug_lock; int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/ * ctrl_pipe; int /*<<< orphan*/  ctx_poll; } ;
typedef  TYPE_1__ libusb_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ NO_THREAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_context_lock ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* usbi_default_context ; 

void
FUNC11(libusb_context *ctx)
{
	ctx = FUNC0(ctx);

	if (ctx == NULL)
		return;

	/* stop hotplug thread, if any */

	if (ctx->hotplug_handler != NO_THREAD) {
		pthread_t td;
		void *ptr;

		FUNC1(ctx);
		td = ctx->hotplug_handler;
		ctx->hotplug_handler = NO_THREAD;
		FUNC2(ctx);

		FUNC7(td, &ptr);
	}

	/* XXX cleanup devices */

	FUNC5(ctx, &ctx->ctx_poll);
	FUNC3(ctx->ctrl_pipe[0]);
	FUNC3(ctx->ctrl_pipe[1]);
	FUNC8(&ctx->ctx_lock);
	FUNC8(&ctx->hotplug_lock);
	FUNC6(&ctx->ctx_cond);

	FUNC9(&default_context_lock);
	if (ctx == usbi_default_context) {
		usbi_default_context = NULL;
	}
	FUNC10(&default_context_lock);

	FUNC4(ctx);
}