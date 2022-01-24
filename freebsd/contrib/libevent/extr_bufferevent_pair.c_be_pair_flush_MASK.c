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
 short BEV_EVENT_READING ; 
 short BEV_EVENT_WRITING ; 
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

	if (!bev_p->partner)
		return -1;

	if (mode == BEV_NORMAL)
		return 0;

	FUNC4(bev);

	partner = FUNC3(bev_p->partner);

	if ((iotype & EV_READ) != 0)
		FUNC0(partner, bev, 1);

	if ((iotype & EV_WRITE) != 0)
		FUNC0(bev, partner, 1);

	if (mode == BEV_FINISHED) {
		short what = BEV_EVENT_EOF;
		if (iotype & EV_READ)
			what |= BEV_EVENT_WRITING;
		if (iotype & EV_WRITE)
			what |= BEV_EVENT_READING;
		FUNC1(partner, what, 0);
	}
	FUNC2(bev);
	return 0;
}