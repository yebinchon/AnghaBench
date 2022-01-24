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
struct sockaddr {int sa_family; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
typedef  int /*<<< orphan*/  on ;
typedef  int evutil_socket_t ;
typedef  int /*<<< orphan*/  evconnlistener_cb ;

/* Variables and functions */
 int AF_UNSPEC ; 
 int EVUTIL_SOCK_CLOEXEC ; 
 int EVUTIL_SOCK_NONBLOCK ; 
 unsigned int LEV_OPT_CLOSE_ON_EXEC ; 
 unsigned int LEV_OPT_DEFERRED_ACCEPT ; 
 unsigned int LEV_OPT_REUSEABLE ; 
 unsigned int LEV_OPT_REUSEABLE_PORT ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 scalar_t__ FUNC0 (int,struct sockaddr const*,int) ; 
 struct evconnlistener* FUNC1 (struct event_base*,int /*<<< orphan*/ ,void*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

struct evconnlistener *
FUNC8(struct event_base *base, evconnlistener_cb cb,
    void *ptr, unsigned flags, int backlog, const struct sockaddr *sa,
    int socklen)
{
	struct evconnlistener *listener;
	evutil_socket_t fd;
	int on = 1;
	int family = sa ? sa->sa_family : AF_UNSPEC;
	int socktype = SOCK_STREAM | EVUTIL_SOCK_NONBLOCK;

	if (backlog == 0)
		return NULL;

	if (flags & LEV_OPT_CLOSE_ON_EXEC)
		socktype |= EVUTIL_SOCK_CLOEXEC;

	fd = FUNC6(family, socktype, 0);
	if (fd == -1)
		return NULL;

	if (FUNC7(fd, SOL_SOCKET, SO_KEEPALIVE, (void*)&on, sizeof(on))<0)
		goto err;

	if (flags & LEV_OPT_REUSEABLE) {
		if (FUNC3(fd) < 0)
			goto err;
	}

	if (flags & LEV_OPT_REUSEABLE_PORT) {
		if (FUNC4(fd) < 0)
			goto err;
	}

	if (flags & LEV_OPT_DEFERRED_ACCEPT) {
		if (FUNC5(fd) < 0)
			goto err;
	}

	if (sa) {
		if (FUNC0(fd, sa, socklen)<0)
			goto err;
	}

	listener = FUNC1(base, cb, ptr, flags, backlog, fd);
	if (!listener)
		goto err;

	return listener;
err:
	FUNC2(fd);
	return NULL;
}