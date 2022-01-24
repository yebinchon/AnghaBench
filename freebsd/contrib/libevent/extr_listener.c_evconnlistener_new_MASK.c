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
struct win32_extension_fns {scalar_t__ GetAcceptExSockaddrs; scalar_t__ AcceptEx; } ;
struct event_base {int dummy; } ;
struct evconnlistener {unsigned int flags; int refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  accept4_flags; void* user_data; int /*<<< orphan*/  cb; int /*<<< orphan*/ * ops; } ;
struct evconnlistener_event {struct evconnlistener base; int /*<<< orphan*/  listener; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  evconnlistener_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVTHREAD_LOCKTYPE_RECURSIVE ; 
 int /*<<< orphan*/  EVUTIL_SOCK_CLOEXEC ; 
 int /*<<< orphan*/  EVUTIL_SOCK_NONBLOCK ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 unsigned int LEV_OPT_CLOSE_ON_EXEC ; 
 unsigned int LEV_OPT_DISABLED ; 
 unsigned int LEV_OPT_LEAVE_SOCKETS_BLOCKING ; 
 unsigned int LEV_OPT_THREADSAFE ; 
 int /*<<< orphan*/  FUNC1 (struct evconnlistener*) ; 
 int /*<<< orphan*/  evconnlistener_event_ops ; 
 struct evconnlistener* FUNC2 (struct event_base*,int /*<<< orphan*/ ,void*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct event_base*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct evconnlistener_event*) ; 
 scalar_t__ FUNC4 (struct event_base*) ; 
 struct win32_extension_fns* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  listener_read_cb ; 
 struct evconnlistener_event* FUNC7 (int,int) ; 

struct evconnlistener *
FUNC8(struct event_base *base,
    evconnlistener_cb cb, void *ptr, unsigned flags, int backlog,
    evutil_socket_t fd)
{
	struct evconnlistener_event *lev;

#ifdef _WIN32
	if (base && event_base_get_iocp_(base)) {
		const struct win32_extension_fns *ext =
			event_get_win32_extension_fns_();
		if (ext->AcceptEx && ext->GetAcceptExSockaddrs)
			return evconnlistener_new_async(base, cb, ptr, flags,
				backlog, fd);
	}
#endif

	if (backlog > 0) {
		if (FUNC6(fd, backlog) < 0)
			return NULL;
	} else if (backlog < 0) {
		if (FUNC6(fd, 128) < 0)
			return NULL;
	}

	lev = FUNC7(1, sizeof(struct evconnlistener_event));
	if (!lev)
		return NULL;

	lev->base.ops = &evconnlistener_event_ops;
	lev->base.cb = cb;
	lev->base.user_data = ptr;
	lev->base.flags = flags;
	lev->base.refcnt = 1;

	lev->base.accept4_flags = 0;
	if (!(flags & LEV_OPT_LEAVE_SOCKETS_BLOCKING))
		lev->base.accept4_flags |= EVUTIL_SOCK_NONBLOCK;
	if (flags & LEV_OPT_CLOSE_ON_EXEC)
		lev->base.accept4_flags |= EVUTIL_SOCK_CLOEXEC;

	if (flags & LEV_OPT_THREADSAFE) {
		FUNC0(lev->base.lock, EVTHREAD_LOCKTYPE_RECURSIVE);
	}

	FUNC3(&lev->listener, base, fd, EV_READ|EV_PERSIST,
	    listener_read_cb, lev);

	if (!(flags & LEV_OPT_DISABLED))
	    FUNC1(&lev->base);

	return &lev->base;
}