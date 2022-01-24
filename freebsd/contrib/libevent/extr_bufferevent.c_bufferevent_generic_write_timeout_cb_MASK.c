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
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int BEV_EVENT_TIMEOUT ; 
 int BEV_EVENT_WRITING ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(evutil_socket_t fd, short event, void *ctx)
{
	struct bufferevent *bev = ctx;
	FUNC2(bev);
	FUNC1(bev, EV_WRITE);
	FUNC3(bev, BEV_EVENT_TIMEOUT|BEV_EVENT_WRITING, 0);
	FUNC0(bev);
}