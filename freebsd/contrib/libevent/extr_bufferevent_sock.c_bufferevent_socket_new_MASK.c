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
struct event_base {int dummy; } ;
struct bufferevent {int /*<<< orphan*/  output; int /*<<< orphan*/  input; int /*<<< orphan*/  ev_base; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; } ;
struct bufferevent_private {struct bufferevent bev; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVBUFFER_FLAG_DRAINS_TO_FD ; 
 int EV_FINALIZE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 struct bufferevent* FUNC0 (struct event_base*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct bufferevent_private*,struct event_base*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  bufferevent_ops_socket ; 
 int /*<<< orphan*/  bufferevent_readcb ; 
 int /*<<< orphan*/  bufferevent_socket_outbuf_cb ; 
 int /*<<< orphan*/  bufferevent_writecb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct bufferevent*) ; 
 scalar_t__ FUNC6 (struct event_base*) ; 
 struct bufferevent_private* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent_private*) ; 

struct bufferevent *
FUNC9(struct event_base *base, evutil_socket_t fd,
    int options)
{
	struct bufferevent_private *bufev_p;
	struct bufferevent *bufev;

#ifdef _WIN32
	if (base && event_base_get_iocp_(base))
		return bufferevent_async_new_(base, fd, options);
#endif

	if ((bufev_p = FUNC7(1, sizeof(struct bufferevent_private)))== NULL)
		return NULL;

	if (FUNC1(bufev_p, base, &bufferevent_ops_socket,
				    options) < 0) {
		FUNC8(bufev_p);
		return NULL;
	}
	bufev = &bufev_p->bev;
	FUNC4(bufev->output, EVBUFFER_FLAG_DRAINS_TO_FD);

	FUNC5(&bufev->ev_read, bufev->ev_base, fd,
	    EV_READ|EV_PERSIST|EV_FINALIZE, bufferevent_readcb, bufev);
	FUNC5(&bufev->ev_write, bufev->ev_base, fd,
	    EV_WRITE|EV_PERSIST|EV_FINALIZE, bufferevent_writecb, bufev);

	FUNC2(bufev->output, bufferevent_socket_outbuf_cb, bufev);

	FUNC3(bufev->input, 0);
	FUNC3(bufev->output, 1);

	return bufev;
}