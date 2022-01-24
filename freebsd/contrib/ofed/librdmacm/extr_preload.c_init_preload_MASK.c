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
struct TYPE_4__ {void* fxstat; void* sendfile; void* dup2; void* fcntl; void* getsockopt; void* setsockopt; void* getsockname; void* getpeername; void* close; void* shutdown; void* poll; void* writev; void* write; void* sendmsg; void* sendto; void* send; void* readv; void* read; void* recvmsg; void* recvfrom; void* recv; void* connect; void* accept; void* listen; void* bind; void* socket; } ;
struct TYPE_3__ {void* fcntl; void* getsockopt; void* setsockopt; void* getsockname; void* getpeername; void* close; void* shutdown; void* poll; void* writev; void* write; void* sendmsg; void* sendto; void* send; void* readv; void* read; void* recvmsg; void* recvfrom; void* recv; void* connect; void* accept; void* listen; void* bind; void* socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTLD_DEFAULT ; 
 int /*<<< orphan*/  RTLD_NEXT ; 
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ real ; 
 TYPE_1__ rs ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	static int init;

	/* Quick check without lock */
	if (init)
		return;

	FUNC2(&mut);
	if (init)
		goto out;

	real.socket = FUNC0(RTLD_NEXT, "socket");
	real.bind = FUNC0(RTLD_NEXT, "bind");
	real.listen = FUNC0(RTLD_NEXT, "listen");
	real.accept = FUNC0(RTLD_NEXT, "accept");
	real.connect = FUNC0(RTLD_NEXT, "connect");
	real.recv = FUNC0(RTLD_NEXT, "recv");
	real.recvfrom = FUNC0(RTLD_NEXT, "recvfrom");
	real.recvmsg = FUNC0(RTLD_NEXT, "recvmsg");
	real.read = FUNC0(RTLD_NEXT, "read");
	real.readv = FUNC0(RTLD_NEXT, "readv");
	real.send = FUNC0(RTLD_NEXT, "send");
	real.sendto = FUNC0(RTLD_NEXT, "sendto");
	real.sendmsg = FUNC0(RTLD_NEXT, "sendmsg");
	real.write = FUNC0(RTLD_NEXT, "write");
	real.writev = FUNC0(RTLD_NEXT, "writev");
	real.poll = FUNC0(RTLD_NEXT, "poll");
	real.shutdown = FUNC0(RTLD_NEXT, "shutdown");
	real.close = FUNC0(RTLD_NEXT, "close");
	real.getpeername = FUNC0(RTLD_NEXT, "getpeername");
	real.getsockname = FUNC0(RTLD_NEXT, "getsockname");
	real.setsockopt = FUNC0(RTLD_NEXT, "setsockopt");
	real.getsockopt = FUNC0(RTLD_NEXT, "getsockopt");
	real.fcntl = FUNC0(RTLD_NEXT, "fcntl");
	real.dup2 = FUNC0(RTLD_NEXT, "dup2");
	real.sendfile = FUNC0(RTLD_NEXT, "sendfile");
	real.fxstat = FUNC0(RTLD_NEXT, "__fxstat");

	rs.socket = FUNC0(RTLD_DEFAULT, "rsocket");
	rs.bind = FUNC0(RTLD_DEFAULT, "rbind");
	rs.listen = FUNC0(RTLD_DEFAULT, "rlisten");
	rs.accept = FUNC0(RTLD_DEFAULT, "raccept");
	rs.connect = FUNC0(RTLD_DEFAULT, "rconnect");
	rs.recv = FUNC0(RTLD_DEFAULT, "rrecv");
	rs.recvfrom = FUNC0(RTLD_DEFAULT, "rrecvfrom");
	rs.recvmsg = FUNC0(RTLD_DEFAULT, "rrecvmsg");
	rs.read = FUNC0(RTLD_DEFAULT, "rread");
	rs.readv = FUNC0(RTLD_DEFAULT, "rreadv");
	rs.send = FUNC0(RTLD_DEFAULT, "rsend");
	rs.sendto = FUNC0(RTLD_DEFAULT, "rsendto");
	rs.sendmsg = FUNC0(RTLD_DEFAULT, "rsendmsg");
	rs.write = FUNC0(RTLD_DEFAULT, "rwrite");
	rs.writev = FUNC0(RTLD_DEFAULT, "rwritev");
	rs.poll = FUNC0(RTLD_DEFAULT, "rpoll");
	rs.shutdown = FUNC0(RTLD_DEFAULT, "rshutdown");
	rs.close = FUNC0(RTLD_DEFAULT, "rclose");
	rs.getpeername = FUNC0(RTLD_DEFAULT, "rgetpeername");
	rs.getsockname = FUNC0(RTLD_DEFAULT, "rgetsockname");
	rs.setsockopt = FUNC0(RTLD_DEFAULT, "rsetsockopt");
	rs.getsockopt = FUNC0(RTLD_DEFAULT, "rgetsockopt");
	rs.fcntl = FUNC0(RTLD_DEFAULT, "rfcntl");

	FUNC1();
	FUNC4();
	init = 1;
out:
	FUNC3(&mut);
}