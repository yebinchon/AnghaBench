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
struct bufferevent_pair {int /*<<< orphan*/  partner; } ;
struct bufferevent {int dummy; } ;
typedef  enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;

/* Variables and functions */
 short BEV_EVENT_EOF ; 
 int BEV_FINISHED ; 
 int BEV_NORMAL ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 struct bufferevent* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 struct bufferevent_pair* FUNC5 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC6(struct bufferevent *bev, short iotype,
    enum bufferevent_flush_mode mode)
{
	struct bufferevent_pair *bev_p = FUNC5(bev);
	struct bufferevent *partner;
	FUNC4(bev);
	if (!bev_p->partner)
		return -1;

	partner = FUNC3(bev_p->partner);

	if (mode == BEV_NORMAL)
		return 0;

	if ((iotype & EV_READ) != 0)
		FUNC0(partner, bev, 1);

	if ((iotype & EV_WRITE) != 0)
		FUNC0(bev, partner, 1);

	if (mode == BEV_FINISHED) {
		FUNC1(partner, iotype|BEV_EVENT_EOF, 0);
	}
	FUNC2(bev);
	return 0;
}