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
typedef  scalar_t__ u_short ;
typedef  scalar_t__ u_int ;
struct sockaddr_storage {scalar_t__ ss_len; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int maxlen; } ;
struct TYPE_3__ {int /*<<< orphan*/ * buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct cf_rendezvous {int xp_fd; TYPE_2__ xp_rtaddr; TYPE_1__ xp_ltaddr; scalar_t__ xp_port; int /*<<< orphan*/  xp_verf; struct cf_rendezvous* xp_p1; int /*<<< orphan*/  maxrec; void* recvsize; void* sendsize; } ;
struct __rpc_sockinfo {int /*<<< orphan*/  si_proto; int /*<<< orphan*/  si_af; } ;
typedef  int socklen_t ;
typedef  struct cf_rendezvous SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct __rpc_sockinfo*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __svc_maxrec ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  _null_auth ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct cf_rendezvous*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sockaddr_storage*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct cf_rendezvous*) ; 
 struct cf_rendezvous* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct cf_rendezvous*) ; 

SVCXPRT *
FUNC10(int fd, u_int sendsize, u_int recvsize)
{
	SVCXPRT *xprt = NULL;
	struct cf_rendezvous *r = NULL;
	struct __rpc_sockinfo si;
	struct sockaddr_storage sslocal;
	socklen_t slen;

	if (!FUNC0(fd, &si))
		return NULL;

	r = FUNC3(sizeof(*r));
	if (r == NULL) {
		FUNC8("svc_vc_create: out of memory");
		goto cleanup_svc_vc_create;
	}
	r->sendsize = FUNC1(si.si_af, si.si_proto, (int)sendsize);
	r->recvsize = FUNC1(si.si_af, si.si_proto, (int)recvsize);
	r->maxrec = __svc_maxrec;
	xprt = FUNC7();
	if (xprt == NULL) {
		FUNC8("svc_vc_create: out of memory");
		goto cleanup_svc_vc_create;
	}
	xprt->xp_p1 = r;
	xprt->xp_verf = _null_auth;
	FUNC6(xprt);
	xprt->xp_port = (u_short)-1;	/* It is the rendezvouser */
	xprt->xp_fd = fd;

	slen = sizeof (struct sockaddr_storage);
	if (FUNC2(fd, (struct sockaddr *)(void *)&sslocal, &slen) < 0) {
		FUNC8("svc_vc_create: could not retrieve local addr");
		goto cleanup_svc_vc_create;
	}

	xprt->xp_ltaddr.maxlen = xprt->xp_ltaddr.len = sslocal.ss_len;
	xprt->xp_ltaddr.buf = FUNC3((size_t)sslocal.ss_len);
	if (xprt->xp_ltaddr.buf == NULL) {
		FUNC8("svc_vc_create: no mem for local addr");
		goto cleanup_svc_vc_create;
	}
	FUNC5(xprt->xp_ltaddr.buf, &sslocal, (size_t)sslocal.ss_len);

	xprt->xp_rtaddr.maxlen = sizeof (struct sockaddr_storage);
	FUNC9(xprt);
	return (xprt);
cleanup_svc_vc_create:
	if (xprt)
		FUNC4(xprt, sizeof(*xprt));
	if (r != NULL)
		FUNC4(r, sizeof(*r));
	return (NULL);
}