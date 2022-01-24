#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bufferevent_private {TYPE_2__* rate_limiting; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  ev_ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  read_limit; } ;
struct TYPE_4__ {TYPE_1__ limit; scalar_t__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  EV_SSIZE_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_private*) ; 

ev_ssize_t
FUNC4(struct bufferevent *bev)
{
	ev_ssize_t r;
	struct bufferevent_private *bevp;
	FUNC0(bev);
	bevp = FUNC2(bev);
	if (bevp->rate_limiting && bevp->rate_limiting->cfg) {
		FUNC3(bevp);
		r = bevp->rate_limiting->limit.read_limit;
	} else {
		r = EV_SSIZE_MAX;
	}
	FUNC1(bev);
	return r;
}