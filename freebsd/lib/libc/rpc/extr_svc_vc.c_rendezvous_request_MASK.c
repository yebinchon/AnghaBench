#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {scalar_t__ ss_family; scalar_t__ ss_len; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct cf_rendezvous {scalar_t__ recvsize; scalar_t__ maxrec; int /*<<< orphan*/  sendsize; } ;
struct cf_conn {scalar_t__ recvsize; scalar_t__ maxrec; int /*<<< orphan*/  last_recv_time; int /*<<< orphan*/  nonblock; int /*<<< orphan*/  xdrs; int /*<<< orphan*/  sendsize; } ;
struct __rpc_sockinfo {scalar_t__ si_proto; } ;
typedef  size_t socklen_t ;
typedef  int /*<<< orphan*/  len ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_7__ {int /*<<< orphan*/ * buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct TYPE_6__ {size_t len; int /*<<< orphan*/ * buf; } ;
struct TYPE_8__ {int xp_addrlen; TYPE_2__ xp_ltaddr; scalar_t__ xp_p1; TYPE_1__ xp_rtaddr; struct sockaddr_in xp_raddr; int /*<<< orphan*/  xp_fd; } ;
typedef  TYPE_3__ SVCXPRT ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_LOCAL ; 
 scalar_t__ EINTR ; 
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 scalar_t__ IPPROTO_TCP ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,size_t*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__,int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sockaddr_storage*,size_t) ; 
 int /*<<< orphan*/  svc_fdset ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static bool_t
FUNC13(SVCXPRT *xprt, struct rpc_msg *msg)
{
	int sock, flags;
	struct cf_rendezvous *r;
	struct cf_conn *cd;
	struct sockaddr_storage addr, sslocal;
	socklen_t len, slen;
	struct __rpc_sockinfo si;
	SVCXPRT *newxprt;
	fd_set cleanfds;

	FUNC7(xprt != NULL);
	FUNC7(msg != NULL);

	r = (struct cf_rendezvous *)xprt->xp_p1;
again:
	len = sizeof addr;
	if ((sock = FUNC3(xprt->xp_fd, (struct sockaddr *)(void *)&addr,
	    &len)) < 0) {
		if (errno == EINTR)
			goto again;
		/*
		 * Clean out the most idle file descriptor when we're
		 * running out.
		 */
		if (errno == EMFILE || errno == ENFILE) {
			cleanfds = svc_fdset;
			FUNC1(&cleanfds, 0, FALSE);
			goto again;
		}
		return (FALSE);
	}
	/*
	 * make a new transporter (re-uses xprt)
	 */
	newxprt = FUNC9(sock, r->sendsize, r->recvsize);
	newxprt->xp_rtaddr.buf = FUNC10(len);
	if (newxprt->xp_rtaddr.buf == NULL)
		return (FALSE);
	FUNC11(newxprt->xp_rtaddr.buf, &addr, len);
	newxprt->xp_rtaddr.len = len;
#ifdef PORTMAP
	if (addr.ss_family == AF_INET || addr.ss_family == AF_LOCAL) {
		newxprt->xp_raddr = *(struct sockaddr_in *)newxprt->xp_rtaddr.buf;
		newxprt->xp_addrlen = sizeof (struct sockaddr_in);
	}
#endif				/* PORTMAP */
	if (FUNC0(sock, &si) && si.si_proto == IPPROTO_TCP) {
		len = 1;
		/* XXX fvdl - is this useful? */
		FUNC6(sock, IPPROTO_TCP, TCP_NODELAY, &len, sizeof (len));
	}

	cd = (struct cf_conn *)newxprt->xp_p1;

	cd->recvsize = r->recvsize;
	cd->sendsize = r->sendsize;
	cd->maxrec = r->maxrec;

	if (cd->maxrec != 0) {
		flags = FUNC4(sock, F_GETFL, 0);
		if (flags  == -1)
			return (FALSE);
		if (FUNC4(sock, F_SETFL, flags | O_NONBLOCK) == -1)
			return (FALSE);
		if (cd->recvsize > cd->maxrec)
			cd->recvsize = cd->maxrec;
		cd->nonblock = TRUE;
		FUNC2(&cd->xdrs, cd->maxrec);
	} else
		cd->nonblock = FALSE;
	slen = sizeof(struct sockaddr_storage);
	if(FUNC5(sock, (struct sockaddr *)(void *)&sslocal, &slen) < 0) {
		FUNC12("svc_vc_create: could not retrieve local addr");
		newxprt->xp_ltaddr.maxlen = newxprt->xp_ltaddr.len = 0;
	} else {
		newxprt->xp_ltaddr.maxlen = newxprt->xp_ltaddr.len = sslocal.ss_len;
		newxprt->xp_ltaddr.buf = FUNC10((size_t)sslocal.ss_len);
		if (newxprt->xp_ltaddr.buf == NULL) {
			FUNC12("svc_vc_create: no mem for local addr");
			newxprt->xp_ltaddr.maxlen = newxprt->xp_ltaddr.len = 0;
		} else {
			FUNC11(newxprt->xp_ltaddr.buf, &sslocal, (size_t)sslocal.ss_len);
		}
	}

	FUNC8(&cd->last_recv_time, NULL);

	return (FALSE); /* there is never an rpc msg to be processed */
}