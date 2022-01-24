#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* opaque; } ;
typedef  TYPE_1__ evTimerID ;
struct TYPE_9__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  index; } ;
typedef  TYPE_2__ evTimer ;
struct TYPE_10__ {int /*<<< orphan*/  timers; } ;
typedef  TYPE_3__ evContext_p ;
struct TYPE_11__ {TYPE_3__* opaque; } ;
typedef  TYPE_4__ evContext ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EV_TMR_RATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

int
FUNC4(evContext opaqueCtx,
	     evTimerID id,
	     const char *param,
	     int value
) {
	evContext_p *ctx = opaqueCtx.opaque;
	evTimer *timer = id.opaque;
	int result=0;

	FUNC1(value);

	if (FUNC2(ctx->timers, timer->index) != timer)
		FUNC0(ENOENT);

	if (FUNC3(param, "rate") == 0)
		timer->mode |= EV_TMR_RATE;
	else if (FUNC3(param, "interval") == 0)
		timer->mode &= ~EV_TMR_RATE;
	else
		FUNC0(EINVAL);

	return (result);
}