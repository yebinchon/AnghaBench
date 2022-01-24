#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bufferevent_private {int write_suspended; TYPE_3__* rate_limiting; } ;
struct bufferevent {int dummy; } ;
typedef  scalar_t__ ev_ssize_t ;
struct TYPE_4__ {scalar_t__ read_limit; } ;
struct TYPE_6__ {int /*<<< orphan*/  refill_bucket_event; TYPE_2__* cfg; TYPE_1__ limit; } ;
struct TYPE_5__ {int /*<<< orphan*/  tick_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int BEV_SUSPEND_BW ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct bufferevent *bev, ev_ssize_t decr)
{
	int r = 0;
	ev_ssize_t old_limit, new_limit;
	struct bufferevent_private *bevp;
	FUNC0(bev);
	bevp = FUNC2(bev);
	FUNC3(bevp->rate_limiting && bevp->rate_limiting->cfg);
	old_limit = bevp->rate_limiting->limit.read_limit;

	new_limit = (bevp->rate_limiting->limit.read_limit -= decr);
	if (old_limit > 0 && new_limit <= 0) {
		FUNC4(bev, BEV_SUSPEND_BW);
		if (FUNC6(&bevp->rate_limiting->refill_bucket_event,
			&bevp->rate_limiting->cfg->tick_timeout) < 0)
			r = -1;
	} else if (old_limit <= 0 && new_limit > 0) {
		if (!(bevp->write_suspended & BEV_SUSPEND_BW))
			FUNC7(&bevp->rate_limiting->refill_bucket_event);
		FUNC5(bev, BEV_SUSPEND_BW);
	}

	FUNC1(bev);
	return r;
}