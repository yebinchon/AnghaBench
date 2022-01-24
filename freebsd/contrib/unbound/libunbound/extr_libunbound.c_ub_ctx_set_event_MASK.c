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
struct ub_event_base {int dummy; } ;
struct ub_ctx {int dothread; int /*<<< orphan*/  cfglock; scalar_t__ created_bg; struct ub_event_base* event_base; int /*<<< orphan*/ * event_worker; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 int UB_INITFAIL ; 
 int UB_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ub_event_base* FUNC3 (struct event_base*) ; 
 struct event_base* FUNC4 (struct ub_event_base*) ; 

int 
FUNC5(struct ub_ctx* ctx, struct event_base* base) {
	struct ub_event_base* new_base;

	if (!ctx || !ctx->event_base || !base) {
		return UB_INITFAIL;
	}
	if (FUNC4(ctx->event_base) == base) {
		/* already set */
		return UB_NOERROR;
	}
	
	FUNC1(&ctx->cfglock);
	/* destroy the current worker - safe to pass in NULL */
	FUNC0(ctx->event_worker);
	ctx->event_worker = NULL;
	new_base = FUNC3(base);
	if (new_base)
		ctx->event_base = new_base;	
	ctx->created_bg = 0;
	ctx->dothread = 1;
	FUNC2(&ctx->cfglock);
	return new_base ? UB_NOERROR : UB_INITFAIL;
}