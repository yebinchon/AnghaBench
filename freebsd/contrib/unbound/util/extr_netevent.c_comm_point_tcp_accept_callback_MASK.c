#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct comm_point {scalar_t__ type; int fd; int /*<<< orphan*/  max_tcp_count; int /*<<< orphan*/  cur_tcp_count; struct comm_point* tcp_free; scalar_t__ ssl; int /*<<< orphan*/  ssl_shake_state; TYPE_3__ repinfo; TYPE_2__* ev; } ;
struct TYPE_8__ {TYPE_1__* eb; } ;
struct TYPE_6__ {int /*<<< orphan*/  ev; TYPE_4__* base; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 short UB_EV_PERSIST ; 
 short UB_EV_READ ; 
 short UB_EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct comm_point*) ; 
 int FUNC1 (struct comm_point*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct comm_point*) ; 
 int /*<<< orphan*/  comm_point_tcp_handle_callback ; 
 int /*<<< orphan*/  FUNC3 (struct comm_point*,scalar_t__) ; 
 int /*<<< orphan*/  comm_ssl_shake_read ; 
 scalar_t__ comm_tcp_accept ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct comm_point*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,short,int /*<<< orphan*/ ,struct comm_point*) ; 

void 
FUNC12(int fd, short event, void* arg)
{
	struct comm_point* c = (struct comm_point*)arg, *c_hdl;
	int new_fd;
	FUNC5(c->type == comm_tcp_accept);
	if(!(event & UB_EV_READ)) {
		FUNC6("ignoring tcp accept event %d", (int)event);
		return;
	}
	FUNC9(c->ev->base);
	/* find free tcp handler. */
	if(!c->tcp_free) {
		FUNC7("accepted too many tcp, connections full");
		return;
	}
	/* accept incoming connection. */
	c_hdl = c->tcp_free;
	/* clear leftover flags from previous use, and then set the
	 * correct event base for the event structure for libevent */
	FUNC10(c_hdl->ev->ev);
	c_hdl->ev->ev = FUNC11(c_hdl->ev->base->eb->base, -1, UB_EV_PERSIST | UB_EV_READ | UB_EV_TIMEOUT, comm_point_tcp_handle_callback, c_hdl);
	if(!c_hdl->ev->ev) {
		FUNC7("could not ub_event_new, dropped tcp");
		return;
	}
	FUNC5(fd != -1);
	(void)fd;
	new_fd = FUNC1(c, &c_hdl->repinfo.addr,
		&c_hdl->repinfo.addrlen);
	if(new_fd == -1)
		return;
	if(c->ssl) {
		c_hdl->ssl = FUNC4(c->ssl, new_fd);
		if(!c_hdl->ssl) {
			c_hdl->fd = new_fd;
			FUNC0(c_hdl);
			return;
		}
		c_hdl->ssl_shake_state = comm_ssl_shake_read;
#ifdef USE_WINSOCK
		comm_point_tcp_win_bio_cb(c_hdl, c_hdl->ssl);
#endif
	}

	/* grab the tcp handler buffers */
	c->cur_tcp_count++;
	c->tcp_free = c_hdl->tcp_free;
	if(!c->tcp_free) {
		/* stop accepting incoming queries for now. */
		FUNC2(c);
	}
	FUNC8(c_hdl, new_fd, c->cur_tcp_count, c->max_tcp_count);
}