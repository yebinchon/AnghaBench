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
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_OPT_CLOSE_ON_FREE ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bufferevent* FUNC2 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct event_base* FUNC3 (struct evconnlistener*) ; 
 int /*<<< orphan*/  server_event_cb ; 
 int /*<<< orphan*/  server_read_cb ; 

__attribute__((used)) static void
FUNC4(struct evconnlistener *listener, evutil_socket_t sock,
                   struct sockaddr *addr, int len, void *ptr)
{
	struct event_base *base = FUNC3(listener);
	struct bufferevent *bev = FUNC2(base, sock,
                                                         BEV_OPT_CLOSE_ON_FREE);

	FUNC1(bev, server_read_cb, NULL, server_event_cb, NULL);
	FUNC0(bev, EV_READ|EV_WRITE);
}