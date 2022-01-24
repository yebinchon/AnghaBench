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
struct bufferevent_async {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_async*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_async*) ; 
 struct bufferevent_async* FUNC4 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC5(struct bufferevent *bev, short what)
{
	struct bufferevent_async *bev_async = FUNC4(bev);
	/* XXXX If we disable reading or writing, we may want to consider
	 * canceling any in-progress read or write operation, though it might
	 * not work. */

	if (what & EV_READ) {
		FUNC0(bev);
		FUNC2(bev_async);
	}
	if (what & EV_WRITE) {
		FUNC1(bev);
		FUNC3(bev_async);
	}

	return 0;
}