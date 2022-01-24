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
struct internal_event {int /*<<< orphan*/ * ev; struct comm_base* base; } ;
struct comm_point {int fd; int /*<<< orphan*/ * timeout; struct internal_event* ev; void* cb_arg; int /*<<< orphan*/ * callback; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ tcp_do_toggle_rw; scalar_t__ inuse; int /*<<< orphan*/ * dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ do_not_close; scalar_t__ tcp_do_close; int /*<<< orphan*/  type; int /*<<< orphan*/ * tcp_free; int /*<<< orphan*/ * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int /*<<< orphan*/ * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; int /*<<< orphan*/ * buffer; } ;
struct comm_base {TYPE_1__* eb; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  comm_point_callback_type ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 short UB_EV_PERSIST ; 
 short UB_EV_READ ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comm_point*) ; 
 int /*<<< orphan*/  comm_point_udp_ancil_callback ; 
 int /*<<< orphan*/  comm_udp ; 
 int /*<<< orphan*/  FUNC2 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,short,int /*<<< orphan*/ ,struct comm_point*) ; 

struct comm_point* 
FUNC6(struct comm_base *base, int fd, 
	sldns_buffer* buffer, 
	comm_point_callback_type* callback, void* callback_arg)
{
	struct comm_point* c = (struct comm_point*)FUNC0(1,
		sizeof(struct comm_point));
	short evbits;
	if(!c)
		return NULL;
	c->ev = (struct internal_event*)FUNC0(1,
		sizeof(struct internal_event));
	if(!c->ev) {
		FUNC2(c);
		return NULL;
	}
	c->ev->base = base;
	c->fd = fd;
	c->buffer = buffer;
	c->timeout = NULL;
	c->tcp_is_reading = 0;
	c->tcp_byte_count = 0;
	c->tcp_parent = NULL;
	c->max_tcp_count = 0;
	c->cur_tcp_count = 0;
	c->tcp_handlers = NULL;
	c->tcp_free = NULL;
	c->type = comm_udp;
	c->tcp_do_close = 0;
	c->do_not_close = 0;
#ifdef USE_DNSCRYPT
	c->dnscrypt = 0;
	c->dnscrypt_buffer = buffer;
#endif
	c->inuse = 0;
	c->tcp_do_toggle_rw = 0;
	c->tcp_check_nb_connect = 0;
#ifdef USE_MSG_FASTOPEN
	c->tcp_do_fastopen = 0;
#endif
	c->callback = callback;
	c->cb_arg = callback_arg;
	evbits = UB_EV_READ | UB_EV_PERSIST;
	/* ub_event stuff */
	c->ev->ev = FUNC5(base->eb->base, c->fd, evbits,
		comm_point_udp_ancil_callback, c);
	if(c->ev->ev == NULL) {
		FUNC3("could not baseset udp event");
		FUNC1(c);
		return NULL;
	}
	if(fd!=-1 && FUNC4(c->ev->ev, c->timeout) != 0 ) {
		FUNC3("could not add udp event");
		FUNC1(c);
		return NULL;
	}
	return c;
}