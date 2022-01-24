#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct libworker {TYPE_1__* ctx; scalar_t__ is_bg_thread; } ;
struct ctx_query {int cancelled; } ;
struct TYPE_2__ {int /*<<< orphan*/  cfglock; } ;

/* Variables and functions */
 struct ctx_query* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct libworker* w, uint8_t* buf, uint32_t len)
{
	struct ctx_query* q;
	if(w->is_bg_thread) {
		FUNC2(&w->ctx->cfglock);
		q = FUNC0(w->ctx, buf, len);
		FUNC3(&w->ctx->cfglock);
	} else {
		q = FUNC0(w->ctx, buf, len);
	}
	if(!q) {
		/* probably simply lookup failed, i.e. the message had been
		 * processed and answered before the cancel arrived */
		return;
	}
	q->cancelled = 1;
	FUNC1(buf);
}