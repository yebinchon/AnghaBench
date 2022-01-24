#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct comm_point {scalar_t__ type; int /*<<< orphan*/  tcl_addr; scalar_t__ tcp_conn_limit; TYPE_2__* ev; int /*<<< orphan*/  fd; } ;
struct comm_base {TYPE_1__* eb; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* stop_accept ) (int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ socklen_t ;
struct TYPE_4__ {int /*<<< orphan*/  ev; struct comm_base* base; } ;
struct TYPE_3__ {int slow_accept_enabled; int /*<<< orphan*/ * slow_accept; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ ECONNABORTED ; 
 scalar_t__ EINTR ; 
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 scalar_t__ EPROTO ; 
 scalar_t__ EWOULDBLOCK ; 
 int NETEVENT_SLOW_ACCEPT_TIME ; 
 int /*<<< orphan*/  SOCK_NONBLOCK ; 
 int /*<<< orphan*/  UB_EV_READ ; 
 int /*<<< orphan*/  UB_EV_TIMEOUT ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ WSAECONNRESET ; 
 scalar_t__ WSAEINPROGRESS ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  comm_base_handle_slow_accept ; 
 scalar_t__ comm_tcp_accept ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,struct sockaddr_storage*,scalar_t__) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,struct sockaddr_storage*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_base*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int verbosity ; 
 char* FUNC16 (scalar_t__) ; 

int FUNC17(struct comm_point* c,
	struct sockaddr_storage* addr, socklen_t* addrlen)
{
	int new_fd;
	*addrlen = (socklen_t)sizeof(*addr);
#ifndef HAVE_ACCEPT4
	new_fd = FUNC1(c->fd, (struct sockaddr*)addr, addrlen);
#else
	/* SOCK_NONBLOCK saves extra calls to fcntl for the same result */
	new_fd = accept4(c->fd, (struct sockaddr*)addr, addrlen, SOCK_NONBLOCK);
#endif
	if(new_fd == -1) {
#ifndef USE_WINSOCK
		/* EINTR is signal interrupt. others are closed connection. */
		if(	errno == EINTR || errno == EAGAIN
#ifdef EWOULDBLOCK
			|| errno == EWOULDBLOCK 
#endif
#ifdef ECONNABORTED
			|| errno == ECONNABORTED 
#endif
#ifdef EPROTO
			|| errno == EPROTO
#endif /* EPROTO */
			)
			return -1;
#if defined(ENFILE) && defined(EMFILE)
		if(errno == ENFILE || errno == EMFILE) {
			/* out of file descriptors, likely outside of our
			 * control. stop accept() calls for some time */
			if(c->ev->base->stop_accept) {
				struct comm_base* b = c->ev->base;
				struct timeval tv;
				verbose(VERB_ALGO, "out of file descriptors: "
					"slow accept");
				b->eb->slow_accept_enabled = 1;
				fptr_ok(fptr_whitelist_stop_accept(
					b->stop_accept));
				(*b->stop_accept)(b->cb_arg);
				/* set timeout, no mallocs */
				tv.tv_sec = NETEVENT_SLOW_ACCEPT_TIME/1000;
				tv.tv_usec = (NETEVENT_SLOW_ACCEPT_TIME%1000)*1000;
				b->eb->slow_accept = ub_event_new(b->eb->base,
					-1, UB_EV_TIMEOUT,
					comm_base_handle_slow_accept, b);
				if(b->eb->slow_accept == NULL) {
					/* we do not want to log here, because
					 * that would spam the logfiles.
					 * error: "event_base_set failed." */
				}
				else if(ub_event_add(b->eb->slow_accept, &tv)
					!= 0) {
					/* we do not want to log here,
					 * error: "event_add failed." */
				}
			}
			return -1;
		}
#endif
		FUNC7("accept failed", FUNC8(errno), addr, *addrlen);
#else /* USE_WINSOCK */
		if(WSAGetLastError() == WSAEINPROGRESS ||
			WSAGetLastError() == WSAECONNRESET)
			return -1;
		if(WSAGetLastError() == WSAEWOULDBLOCK) {
			ub_winsock_tcp_wouldblock(c->ev->ev, UB_EV_READ);
			return -1;
		}
		log_err_addr("accept failed", wsa_strerror(WSAGetLastError()),
			addr, *addrlen);
#endif
		return -1;
	}
	if(c->tcp_conn_limit && c->type == comm_tcp_accept) {
		c->tcl_addr = FUNC10(c->tcp_conn_limit, addr, *addrlen);
		if(!FUNC11(c->tcl_addr)) {
			if(verbosity >= 3)
				FUNC7("accept rejected",
				"connection limit exceeded", addr, *addrlen);
			FUNC3(new_fd);
			return -1;
		}
	}
#ifndef HAVE_ACCEPT4
	FUNC4(new_fd);
#endif
	return new_fd;
}