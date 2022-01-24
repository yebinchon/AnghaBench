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
struct bufferevent_async {int ok; } ;
struct bufferevent {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_async* FUNC2 (struct bufferevent*) ; 

void
FUNC3(struct bufferevent *bev)
{
	struct bufferevent_async *bev_async = FUNC2(bev);
	bev_async->ok = 1;
	FUNC1(bev);
	/* Now's a good time to consider reading/writing */
	FUNC0(bev, bev->enabled);
}