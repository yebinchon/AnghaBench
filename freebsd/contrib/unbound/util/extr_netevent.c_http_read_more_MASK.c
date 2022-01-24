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
struct TYPE_4__ {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct comm_point {int /*<<< orphan*/  buffer; TYPE_2__ repinfo; TYPE_1__* ev; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  ev; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  UB_EV_READ ; 
 scalar_t__ WSAECONNRESET ; 
 scalar_t__ WSAEINPROGRESS ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int
FUNC10(int fd, struct comm_point* c)
{
	ssize_t r;
	FUNC1(FUNC5(c->buffer) > 0);
	r = FUNC3(fd, (void*)FUNC4(c->buffer), 
		FUNC5(c->buffer), 0);
	if(r == 0) {
		return 0;
	} else if(r == -1) {
#ifndef USE_WINSOCK
		if(errno == EINTR || errno == EAGAIN)
			return 1;
		FUNC2("read (in http r)", FUNC7(errno),
			&c->repinfo.addr, c->repinfo.addrlen);
#else /* USE_WINSOCK */
		if(WSAGetLastError() == WSAECONNRESET)
			return 0;
		if(WSAGetLastError() == WSAEINPROGRESS)
			return 1;
		if(WSAGetLastError() == WSAEWOULDBLOCK) {
			ub_winsock_tcp_wouldblock(c->ev->ev, UB_EV_READ);
			return 1;
		}
		log_err_addr("read (in http r)",
			wsa_strerror(WSAGetLastError()),
			&c->repinfo.addr, c->repinfo.addrlen);
#endif
		return 0;
	}
	FUNC6(c->buffer, r);
	return 1;
}