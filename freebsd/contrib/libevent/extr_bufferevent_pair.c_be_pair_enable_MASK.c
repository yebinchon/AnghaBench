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
struct bufferevent_pair {struct bufferevent_pair* partner; } ;
struct bufferevent {int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,struct bufferevent*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bufferevent_pair*,struct bufferevent_pair*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 struct bufferevent* FUNC5 (struct bufferevent_pair*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*) ; 
 struct bufferevent_pair* FUNC8 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC9(struct bufferevent *bufev, short events)
{
	struct bufferevent_pair *bev_p = FUNC8(bufev);
	struct bufferevent_pair *partner = bev_p->partner;

	FUNC7(bufev);

	if (events & EV_READ) {
		FUNC0(bufev);
	}
	if ((events & EV_WRITE) && FUNC6(bufev->output))
		FUNC1(bufev);

	/* We're starting to read! Does the other side have anything to write?*/
	if ((events & EV_READ) && partner &&
	    FUNC3(partner, bev_p)) {
		FUNC2(FUNC5(partner), bufev, 0);
	}
	/* We're starting to write! Does the other side want to read? */
	if ((events & EV_WRITE) && partner &&
	    FUNC3(bev_p, partner)) {
		FUNC2(bufev, FUNC5(partner), 0);
	}
	FUNC4(bufev);
	return 0;
}