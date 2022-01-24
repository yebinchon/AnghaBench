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
struct sockaddr_storage {int dummy; } ;
struct outside_network {int /*<<< orphan*/  udp_buff; int /*<<< orphan*/  base; int /*<<< orphan*/  tcp_mss; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  addrlen; } ;
struct comm_point {int /*<<< orphan*/  buffer; TYPE_1__ repinfo; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  comm_point_callback_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct comm_point* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC3 (struct comm_point*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct comm_point*,struct outside_network*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 

struct comm_point*
FUNC11(struct outside_network* outnet,
	comm_point_callback_type* cb, void* cb_arg,
	struct sockaddr_storage* to_addr, socklen_t to_addrlen, int timeout,
	int ssl, char* host, char* path)
{
	/* cp calls cb with err=NETEVENT_DONE when transfer is done */
	struct comm_point* cp;
	int fd = FUNC7(to_addr, to_addrlen, outnet->tcp_mss);
	if(fd == -1) {
		return 0;
	}
	FUNC4(fd);
	if(!FUNC8(fd, to_addr, to_addrlen)) {
		/* outnet_tcp_connect has closed fd on error for us */
		return 0;
	}
	cp = FUNC1(outnet->base, 65552, cb, cb_arg,
		outnet->udp_buff);
	if(!cp) {
		FUNC5("malloc failure");
		FUNC0(fd);
		return 0;
	}
	cp->repinfo.addrlen = to_addrlen;
	FUNC6(&cp->repinfo.addr, to_addr, to_addrlen);

	/* setup for SSL (if needed) */
	if(ssl) {
		if(!FUNC9(cp, outnet, fd, host)) {
			FUNC5("cannot setup https");
			FUNC2(cp);
			return NULL;
		}
	}

	/* set timeout on TCP connection */
	FUNC3(cp, fd, timeout);

	/* setup http request in cp->buffer */
	if(!FUNC10(cp->buffer, host, path)) {
		FUNC5("error setting up http request");
		FUNC2(cp);
		return NULL;
	}
	return cp;
}