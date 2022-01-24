#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct sldns_buffer {int dummy; } ;
struct comm_reply {struct comm_point* c; scalar_t__ addrlen; int /*<<< orphan*/  addr; scalar_t__ srctype; } ;
struct comm_point {scalar_t__ type; int fd; struct sldns_buffer* buffer; struct sldns_buffer* dnscrypt_buffer; int /*<<< orphan*/  cb_arg; scalar_t__ (* callback ) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*) ;TYPE_1__* ev; } ;
typedef  int ssize_t ;
typedef  scalar_t__ socklen_t ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  NETEVENT_NOERROR ; 
 int NUM_UDP_PER_SELECT ; 
 short UB_EV_READ ; 
 scalar_t__ WSAECONNRESET ; 
 scalar_t__ WSAEINPROGRESS ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct comm_point*,struct sldns_buffer*,struct sockaddr*,scalar_t__) ; 
 scalar_t__ comm_udp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ (*) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*)) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int FUNC6 (int,void*,scalar_t__,int /*<<< orphan*/ ,struct sockaddr*,scalar_t__*) ; 
 scalar_t__ FUNC7 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct sldns_buffer*) ; 
 scalar_t__ FUNC10 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct sldns_buffer*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

void 
FUNC16(int fd, short event, void* arg)
{
	struct comm_reply rep;
	ssize_t rcv;
	int i;
	struct sldns_buffer *buffer;

	rep.c = (struct comm_point*)arg;
	FUNC4(rep.c->type == comm_udp);

	if(!(event&UB_EV_READ))
		return;
	FUNC4(rep.c && rep.c->buffer && rep.c->fd == fd);
	FUNC14(rep.c->ev->base);
	for(i=0; i<NUM_UDP_PER_SELECT; i++) {
		FUNC8(rep.c->buffer);
		rep.addrlen = (socklen_t)sizeof(rep.addr);
		FUNC4(fd != -1);
		FUNC4(FUNC10(rep.c->buffer) > 0);
		rcv = FUNC6(fd, (void*)FUNC7(rep.c->buffer), 
			FUNC10(rep.c->buffer), 0, 
			(struct sockaddr*)&rep.addr, &rep.addrlen);
		if(rcv == -1) {
#ifndef USE_WINSOCK
			if(errno != EAGAIN && errno != EINTR)
				FUNC5("recvfrom %d failed: %s", 
					fd, FUNC12(errno));
#else
			if(WSAGetLastError() != WSAEINPROGRESS &&
				WSAGetLastError() != WSAECONNRESET &&
				WSAGetLastError()!= WSAEWOULDBLOCK)
				log_err("recvfrom failed: %s",
					wsa_strerror(WSAGetLastError()));
#endif
			return;
		}
		FUNC11(rep.c->buffer, rcv);
		FUNC9(rep.c->buffer);
		rep.srctype = 0;
		FUNC2(FUNC3(rep.c->callback));
		if((*rep.c->callback)(rep.c, rep.c->cb_arg, NETEVENT_NOERROR, &rep)) {
			/* send back immediate reply */
#ifdef USE_DNSCRYPT
			buffer = rep.c->dnscrypt_buffer;
#else
			buffer = rep.c->buffer;
#endif
			(void)FUNC1(rep.c, buffer,
				(struct sockaddr*)&rep.addr, rep.addrlen);
		}
		if(!rep.c || rep.c->fd != fd) /* commpoint closed to -1 or reused for
		another UDP port. Note rep.c cannot be reused with TCP fd. */
			break;
	}
}