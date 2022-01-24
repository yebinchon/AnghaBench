#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct bufferevent_private {int read_suspended; int write_suspended; TYPE_4__* rate_limiting; int /*<<< orphan*/  bev; } ;
typedef  scalar_t__ ev_ssize_t ;
struct TYPE_11__ {scalar_t__ read_limit; } ;
struct TYPE_13__ {scalar_t__ read_suspended; TYPE_3__ rate_limit; int /*<<< orphan*/  total_read; } ;
struct TYPE_9__ {scalar_t__ read_limit; } ;
struct TYPE_12__ {TYPE_5__* group; int /*<<< orphan*/  refill_bucket_event; TYPE_2__* cfg; TYPE_1__ limit; } ;
struct TYPE_10__ {int /*<<< orphan*/  tick_timeout; } ;

/* Variables and functions */
 int BEV_SUSPEND_BW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct bufferevent_private *bev, ev_ssize_t bytes)
{
	/* XXXXX Make sure all users of this function check its return value */
	int r = 0;
	/* need to hold lock on bev */
	if (!bev->rate_limiting)
		return 0;

	if (bev->rate_limiting->cfg) {
		bev->rate_limiting->limit.read_limit -= bytes;
		if (bev->rate_limiting->limit.read_limit <= 0) {
			FUNC4(&bev->bev, BEV_SUSPEND_BW);
			if (FUNC6(&bev->rate_limiting->refill_bucket_event,
				&bev->rate_limiting->cfg->tick_timeout) < 0)
				r = -1;
		} else if (bev->read_suspended & BEV_SUSPEND_BW) {
			if (!(bev->write_suspended & BEV_SUSPEND_BW))
				FUNC7(&bev->rate_limiting->refill_bucket_event);
			FUNC5(&bev->bev, BEV_SUSPEND_BW);
		}
	}

	if (bev->rate_limiting->group) {
		FUNC0(bev->rate_limiting->group);
		bev->rate_limiting->group->rate_limit.read_limit -= bytes;
		bev->rate_limiting->group->total_read += bytes;
		if (bev->rate_limiting->group->rate_limit.read_limit <= 0) {
			FUNC2(bev->rate_limiting->group);
		} else if (bev->rate_limiting->group->read_suspended) {
			FUNC3(bev->rate_limiting->group);
		}
		FUNC1(bev->rate_limiting->group);
	}

	return r;
}