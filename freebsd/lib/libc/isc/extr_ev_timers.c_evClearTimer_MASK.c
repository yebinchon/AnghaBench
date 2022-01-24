#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_5__* opaque; } ;
typedef  TYPE_4__ evTimerID ;
struct TYPE_17__ {int /*<<< orphan*/  index; int /*<<< orphan*/  inter; } ;
typedef  TYPE_5__ evTimer ;
struct TYPE_18__ {int debug; int /*<<< orphan*/  timers; TYPE_3__* cur; } ;
typedef  TYPE_6__ evContext_p ;
struct TYPE_19__ {TYPE_6__* opaque; } ;
typedef  TYPE_7__ evContext ;
struct TYPE_13__ {TYPE_5__* this; } ;
struct TYPE_14__ {TYPE_1__ timer; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ Timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  print_timer ; 

int
FUNC7(evContext opaqueCtx, evTimerID id) {
	evContext_p *ctx = opaqueCtx.opaque;
	evTimer *del = id.opaque;

	if (ctx->cur != NULL &&
	    ctx->cur->type == Timer &&
	    ctx->cur->u.timer.this == del) {
		FUNC3(ctx, 8, "deferring delete of timer (executing)\n");
		/*
		 * Setting the interval to zero ensures that evDrop() will
		 * clean up the timer.
		 */
		del->inter = FUNC2(0, 0);
		return (0);
	}

	if (FUNC5(ctx->timers, del->index) != del)
		FUNC0(ENOENT);

	if (FUNC4(ctx->timers, del->index) < 0)
		return (-1);
	FUNC1(del);

	if (ctx->debug > 7) {
		FUNC3(ctx, 7, "timers after evClearTimer:\n");
		(void) FUNC6(ctx->timers, print_timer, (void *)ctx);
	}

	return (0);
}