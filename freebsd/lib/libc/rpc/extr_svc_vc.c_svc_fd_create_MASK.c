#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct sockaddr_storage {scalar_t__ ss_family; scalar_t__ ss_len; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
struct TYPE_10__ {int /*<<< orphan*/  maxlen; } ;
struct TYPE_12__ {TYPE_3__ xp_ltaddr; } ;
struct TYPE_9__ {int /*<<< orphan*/ * buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct TYPE_8__ {int /*<<< orphan*/ * buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct TYPE_11__ {int xp_addrlen; TYPE_2__ xp_ltaddr; TYPE_1__ xp_rtaddr; struct sockaddr_in xp_raddr; } ;
typedef  TYPE_4__ SVCXPRT ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_LOCAL ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_4__* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sockaddr_storage*,size_t) ; 
 TYPE_6__* rep ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

SVCXPRT *
FUNC8(int fd, u_int sendsize, u_int recvsize)
{
	struct sockaddr_storage ss;
	socklen_t slen;
	SVCXPRT *ret;

	FUNC2(fd != -1);

	ret = FUNC3(fd, sendsize, recvsize);
	if (ret == NULL)
		return NULL;

	slen = sizeof (struct sockaddr_storage);
	if (FUNC1(fd, (struct sockaddr *)(void *)&ss, &slen) < 0) {
		FUNC7("svc_fd_create: could not retrieve local addr");
		goto freedata;
	}
	ret->xp_ltaddr.maxlen = ret->xp_ltaddr.len = ss.ss_len;
	ret->xp_ltaddr.buf = FUNC4((size_t)ss.ss_len);
	if (ret->xp_ltaddr.buf == NULL) {
		FUNC7("svc_fd_create: no mem for local addr");
		goto freedata;
	}
	FUNC6(ret->xp_ltaddr.buf, &ss, (size_t)ss.ss_len);

	slen = sizeof (struct sockaddr_storage);
	if (FUNC0(fd, (struct sockaddr *)(void *)&ss, &slen) < 0) {
		FUNC7("svc_fd_create: could not retrieve remote addr");
		goto freedata;
	}
	ret->xp_rtaddr.maxlen = ret->xp_rtaddr.len = ss.ss_len;
	ret->xp_rtaddr.buf = FUNC4((size_t)ss.ss_len);
	if (ret->xp_rtaddr.buf == NULL) {
		FUNC7("svc_fd_create: no mem for local addr");
		goto freedata;
	}
	FUNC6(ret->xp_rtaddr.buf, &ss, (size_t)ss.ss_len);
#ifdef PORTMAP
	if (ss.ss_family == AF_INET || ss.ss_family == AF_LOCAL) {
		ret->xp_raddr = *(struct sockaddr_in *)ret->xp_rtaddr.buf;
		ret->xp_addrlen = sizeof (struct sockaddr_in);
	}
#endif				/* PORTMAP */

	return ret;

freedata:
	if (ret->xp_ltaddr.buf != NULL)
		FUNC5(ret->xp_ltaddr.buf, rep->xp_ltaddr.maxlen);

	return NULL;
}