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
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bufferevent* FUNC3 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_eventcb ; 
 int /*<<< orphan*/  conn_writecb ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct evconnlistener *listener, evutil_socket_t fd,
    struct sockaddr *sa, int socklen, void *user_data)
{
	struct event_base *base = user_data;
	struct bufferevent *bev;

	bev = FUNC3(base, fd, BEV_OPT_CLOSE_ON_FREE);
	if (!bev) {
		FUNC6(stderr, "Error constructing bufferevent!");
		FUNC5(base);
		return;
	}
	FUNC2(bev, NULL, conn_writecb, conn_eventcb, NULL);
	FUNC1(bev, EV_WRITE);
	FUNC0(bev, EV_READ);

	FUNC4(bev, MESSAGE, FUNC7(MESSAGE));
}