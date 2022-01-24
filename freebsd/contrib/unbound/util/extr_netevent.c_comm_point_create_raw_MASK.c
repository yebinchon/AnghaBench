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
struct internal_event {int fd; int do_not_close; struct internal_event* ev; int /*<<< orphan*/ * timeout; void* cb_arg; int /*<<< orphan*/ * callback; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ tcp_do_toggle_rw; scalar_t__ tcp_do_close; int /*<<< orphan*/  type; int /*<<< orphan*/ * tcp_free; int /*<<< orphan*/ * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int /*<<< orphan*/ * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; struct comm_base* base; } ;
struct comm_point {int fd; int do_not_close; struct comm_point* ev; int /*<<< orphan*/ * timeout; void* cb_arg; int /*<<< orphan*/ * callback; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * dnscrypt_buffer; scalar_t__ dnscrypt; scalar_t__ tcp_do_fastopen; scalar_t__ tcp_check_nb_connect; scalar_t__ tcp_do_toggle_rw; scalar_t__ tcp_do_close; int /*<<< orphan*/  type; int /*<<< orphan*/ * tcp_free; int /*<<< orphan*/ * tcp_handlers; scalar_t__ cur_tcp_count; scalar_t__ max_tcp_count; int /*<<< orphan*/ * tcp_parent; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; struct comm_base* base; } ;
struct comm_base {TYPE_1__* eb; } ;
typedef  int /*<<< orphan*/  comm_point_callback_type ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 short UB_EV_PERSIST ; 
 short UB_EV_READ ; 
 short UB_EV_WRITE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  comm_point_raw_handle_callback ; 
 int /*<<< orphan*/  comm_raw ; 
 int /*<<< orphan*/  FUNC1 (struct internal_event*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct internal_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct internal_event*) ; 
 struct internal_event* FUNC5 (int /*<<< orphan*/ ,int,short,int /*<<< orphan*/ ,struct internal_event*) ; 

struct comm_point* 
FUNC6(struct comm_base* base, int fd, int writing, 
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
		FUNC1(c);
		return NULL;
	}
	c->ev->base = base;
	c->fd = fd;
	c->buffer = NULL;
	c->timeout = NULL;
	c->tcp_is_reading = 0;
	c->tcp_byte_count = 0;
	c->tcp_parent = NULL;
	c->max_tcp_count = 0;
	c->cur_tcp_count = 0;
	c->tcp_handlers = NULL;
	c->tcp_free = NULL;
	c->type = comm_raw;
	c->tcp_do_close = 0;
	c->do_not_close = 1;
	c->tcp_do_toggle_rw = 0;
	c->tcp_check_nb_connect = 0;
#ifdef USE_MSG_FASTOPEN
	c->tcp_do_fastopen = 0;
#endif
#ifdef USE_DNSCRYPT
	c->dnscrypt = 0;
	c->dnscrypt_buffer = c->buffer;
#endif
	c->callback = callback;
	c->cb_arg = callback_arg;
	/* ub_event stuff */
	if(writing)
		evbits = UB_EV_PERSIST | UB_EV_WRITE;
	else 	evbits = UB_EV_PERSIST | UB_EV_READ;
	c->ev->ev = FUNC5(base->eb->base, c->fd, evbits,
		comm_point_raw_handle_callback, c);
	if(c->ev->ev == NULL) {
		FUNC2("could not baseset rawhdl event");
		FUNC1(c->ev);
		FUNC1(c);
		return NULL;
	}
	if (FUNC3(c->ev->ev, c->timeout) != 0) {
		FUNC2("could not add rawhdl event");
		FUNC4(c->ev->ev);
		FUNC1(c->ev);
		FUNC1(c);
		return NULL;
	}
	return c;
}