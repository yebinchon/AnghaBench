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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct comm_point {scalar_t__ type; int tcp_byte_count; int /*<<< orphan*/  buffer; TYPE_2__ repinfo; TYPE_1__* ev; scalar_t__ tcp_req_info; int /*<<< orphan*/  tcp_is_reading; scalar_t__ ssl; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  ev; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ ECONNRESET ; 
 scalar_t__ EINTR ; 
 scalar_t__ LDNS_HEADER_SIZE ; 
 int /*<<< orphan*/  UB_EV_READ ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ WSAECONNRESET ; 
 scalar_t__ WSAEINPROGRESS ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ comm_local ; 
 scalar_t__ comm_tcp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct comm_point*) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 

__attribute__((used)) static int
FUNC19(int fd, struct comm_point* c, int short_ok)
{
	ssize_t r;
	FUNC1(c->type == comm_tcp || c->type == comm_local);
	if(c->ssl)
		return FUNC12(c);
	if(!c->tcp_is_reading)
		return 0;

	FUNC1(fd != -1);
	if(c->tcp_byte_count < sizeof(uint16_t)) {
		/* read length bytes */
		r = FUNC3(fd,(void*)FUNC4(c->buffer,c->tcp_byte_count),
			sizeof(uint16_t)-c->tcp_byte_count, 0);
		if(r == 0) {
			if(c->tcp_req_info)
				return FUNC15(c->tcp_req_info);
			return 0;
		} else if(r == -1) {
#ifndef USE_WINSOCK
			if(errno == EINTR || errno == EAGAIN)
				return 1;
#ifdef ECONNRESET
			if(errno == ECONNRESET && verbosity < 2)
				return 0; /* silence reset by peer */
#endif
			FUNC2("read (in tcp s)", FUNC13(errno),
				&c->repinfo.addr, c->repinfo.addrlen);
#else /* USE_WINSOCK */
			if(WSAGetLastError() == WSAECONNRESET)
				return 0;
			if(WSAGetLastError() == WSAEINPROGRESS)
				return 1;
			if(WSAGetLastError() == WSAEWOULDBLOCK) {
				ub_winsock_tcp_wouldblock(c->ev->ev,
					UB_EV_READ);
				return 1;
			}
			log_err_addr("read (in tcp s)", 
				wsa_strerror(WSAGetLastError()),
				&c->repinfo.addr, c->repinfo.addrlen);
#endif
			return 0;
		} 
		c->tcp_byte_count += r;
		if(c->tcp_byte_count != sizeof(uint16_t))
			return 1;
		if(FUNC8(c->buffer, 0) >
			FUNC5(c->buffer)) {
			FUNC17(VERB_QUERY, "tcp: dropped larger than buffer");
			return 0;
		}
		FUNC10(c->buffer, 
			FUNC8(c->buffer, 0));
		if(!short_ok && 
			FUNC7(c->buffer) < LDNS_HEADER_SIZE) {
			FUNC17(VERB_QUERY, "tcp: dropped bogus too short.");
			return 0;
		}
		FUNC17(VERB_ALGO, "Reading tcp query of length %d", 
			(int)FUNC7(c->buffer));
	}

	FUNC1(FUNC9(c->buffer) > 0);
	r = FUNC3(fd, (void*)FUNC6(c->buffer), 
		FUNC9(c->buffer), 0);
	if(r == 0) {
		if(c->tcp_req_info)
			return FUNC15(c->tcp_req_info);
		return 0;
	} else if(r == -1) {
#ifndef USE_WINSOCK
		if(errno == EINTR || errno == EAGAIN)
			return 1;
		FUNC2("read (in tcp r)", FUNC13(errno),
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
		log_err_addr("read (in tcp r)",
			wsa_strerror(WSAGetLastError()),
			&c->repinfo.addr, c->repinfo.addrlen);
#endif
		return 0;
	}
	FUNC11(c->buffer, r);
	if(FUNC9(c->buffer) <= 0) {
		FUNC14(c);
	}
	return 1;
}