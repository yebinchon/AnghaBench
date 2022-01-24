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
struct comm_point {int fd; scalar_t__ type; TYPE_1__* ev; int /*<<< orphan*/  do_not_close; scalar_t__ tcp_req_info; int /*<<< orphan*/  tcl_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  ev; } ;

/* Variables and functions */
 int /*<<< orphan*/  UB_EV_READ ; 
 int /*<<< orphan*/  UB_EV_WRITE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ comm_http ; 
 scalar_t__ comm_tcp ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

void 
FUNC8(struct comm_point* c)
{
	if(!c)
		return;
	if(c->fd != -1) {
		if(FUNC5(c->ev->ev) != 0) {
			FUNC2("could not event_del on close");
		}
	}
	FUNC3(c->tcl_addr);
	if(c->tcp_req_info)
		FUNC4(c->tcp_req_info);
	/* close fd after removing from event lists, or epoll.. is messed up */
	if(c->fd != -1 && !c->do_not_close) {
		if(c->type == comm_tcp || c->type == comm_http) {
			/* delete sticky events for the fd, it gets closed */
			FUNC6(c->ev->ev, UB_EV_READ);
			FUNC6(c->ev->ev, UB_EV_WRITE);
		}
		FUNC7(VERB_ALGO, "close fd %d", c->fd);
#ifndef USE_WINSOCK
		FUNC0(c->fd);
#else
		closesocket(c->fd);
#endif
	}
	c->fd = -1;
}