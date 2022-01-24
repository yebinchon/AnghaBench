#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_9__ {scalar_t__ buf; } ;
struct t_bind {scalar_t__ qlen; TYPE_1__ addr; } ;
struct sockaddr_storage {scalar_t__ ss_len; int /*<<< orphan*/  ss_family; } ;
struct sockaddr {int dummy; } ;
struct netconfig {int /*<<< orphan*/  nc_device; int /*<<< orphan*/  nc_netid; int /*<<< orphan*/  nc_protofmly; } ;
struct __rpc_sockinfo {int si_socktype; scalar_t__ si_alen; int /*<<< orphan*/  si_af; } ;
typedef  int socklen_t ;
typedef  scalar_t__ bool_t ;
struct TYPE_10__ {int xp_fd; void* xp_tp; void* xp_netid; int /*<<< orphan*/  xp_type; } ;
typedef  TYPE_2__ SVCXPRT ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int RPC_ANYFD ; 
#define  SOCK_DGRAM 129 
#define  SOCK_STREAM 128 
 int SOMAXCONN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,struct __rpc_sockinfo*) ; 
 int FUNC2 (struct netconfig const*) ; 
 int /*<<< orphan*/  FUNC3 (struct netconfig const*,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC7 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 

SVCXPRT *
FUNC19(int fd, const struct netconfig *nconf,
    const struct t_bind *bindaddr, u_int sendsz, u_int recvsz)
{
	SVCXPRT *xprt = NULL;		/* service handle */
	bool_t madefd = FALSE;		/* whether fd opened here  */
	struct __rpc_sockinfo si;
	struct sockaddr_storage ss;
	socklen_t slen;

	if (fd == RPC_ANYFD) {
		if (nconf == NULL) {
			FUNC18("svc_tli_create: invalid netconfig");
			return (NULL);
		}
		fd = FUNC2(nconf);
		if (fd == -1) {
			FUNC18(
			    "svc_tli_create: could not open connection for %s",
					nconf->nc_netid);
			return (NULL);
		}
		FUNC3(nconf, &si);
		madefd = TRUE;
	} else {
		/*
		 * It is an open descriptor. Get the transport info.
		 */
		if (!FUNC1(fd, &si)) {
			FUNC18(
		"svc_tli_create: could not get transport information");
			return (NULL);
		}
	}

	/*
	 * If the fd is unbound, try to bind it.
	 */
	if (madefd || !FUNC4(fd)) {
		if (bindaddr == NULL) {
			if (FUNC11(fd, NULL) < 0) {
				FUNC12(&ss, 0, sizeof ss);
				ss.ss_family = si.si_af;
				ss.ss_len = si.si_alen;
				if (FUNC7(fd, (struct sockaddr *)(void *)&ss,
				    (socklen_t)si.si_alen) < 0) {
					FUNC18(
			"svc_tli_create: could not bind to anonymous port");
					goto freedata;
				}
			}
			FUNC10(fd, SOMAXCONN);
		} else {
			if (FUNC7(fd,
			    (struct sockaddr *)bindaddr->addr.buf,
			    (socklen_t)si.si_alen) < 0) {
				FUNC18(
		"svc_tli_create: could not bind to requested address");
				goto freedata;
			}
			FUNC10(fd, (int)bindaddr->qlen);
		}
			
	}
	/*
	 * call transport specific function.
	 */
	switch (si.si_socktype) {
		case SOCK_STREAM:
			slen = sizeof ss;
			if (FUNC9(fd, (struct sockaddr *)(void *)&ss, &slen)
			    == 0) {
				/* accepted socket */
				xprt = FUNC16(fd, sendsz, recvsz);
			} else
				xprt = FUNC17(fd, sendsz, recvsz);
			if (!nconf || !xprt)
				break;
#if 0
			/* XXX fvdl */
			if (strcmp(nconf->nc_protofmly, "inet") == 0 ||
			    strcmp(nconf->nc_protofmly, "inet6") == 0)
				(void) __svc_vc_setflag(xprt, TRUE);
#endif
			break;
		case SOCK_DGRAM:
			xprt = FUNC15(fd, sendsz, recvsz);
			break;
		default:
			FUNC18("svc_tli_create: bad service type");
			goto freedata;
	}

	if (xprt == NULL)
		/*
		 * The error messages here are spitted out by the lower layers:
		 * svc_vc_create(), svc_fd_create() and svc_dg_create().
		 */
		goto freedata;

	/* Fill in type of service */
	xprt->xp_type = FUNC5(si.si_socktype);

	if (nconf) {
		xprt->xp_netid = FUNC14(nconf->nc_netid);
		xprt->xp_tp = FUNC14(nconf->nc_device);
	}
	return (xprt);

freedata:
	if (madefd)
		(void)FUNC8(fd);
	if (xprt) {
		if (!madefd) /* so that svc_destroy doesnt close fd */
			xprt->xp_fd = RPC_ANYFD;
		FUNC0(xprt);
	}
	return (NULL);
}